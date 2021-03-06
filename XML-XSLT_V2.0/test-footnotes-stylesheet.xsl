<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei" version="2.0">


    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:output omit-xml-declaration="yes" indent="yes" encoding="UTF-8"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="/* | /comment() | /processing-instruction()">
        <xsl:text>&#x0A;</xsl:text>

        <xsl:element name="{name()}" xmlns="tei">
            <!--            <xsl:copy-of select="@* | node()"/>-->
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="tei:name[@type eq 'adj']">
        <name type="cypher" subtype="adj" xmlns="tei">
            <xsl:attribute name="ref">
                <xsl:value-of select="@corresp"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </name>
    </xsl:template>



    <xsl:template match="tei:persName">
        <xsl:variable name="currentpersName" select="."/>
        <xsl:variable name="currentCorresp" select="@corresp"/>
        <xsl:variable name="currentType" select="@type"/>
        <xsl:variable name="currentAna" select="@ana"/>
        <xsl:for-each
            select="/tei:TEI/tei:teiHeader/tei:profileDesc/tei:settingDesc/tei:listPlace/tei:place/@xml:id">

            <xsl:if test="matches(substring-after($currentCorresp, '#'), .)">
                <xsl:choose>

                    <!--                Whenever the type = plu (which is only in cases like <persName type=plu corresp="Zundania">Zundanians</persName>),
                    Then add {xmlns="tei" type="cypher" subtype="plu"} and change the attribute "corresp" to "ref" -->

                    <xsl:when test="matches($currentType, 'plu')">
                        <persName type="cypher" subtype="plu" xmlns="tei">
                            <xsl:attribute name="ref">
                                <xsl:value-of select="@corresp"/>
                            </xsl:attribute>
                            <xsl:value-of select="$currentpersName"/>
                            <xsl:apply-templates/>
                        </persName>
                    </xsl:when>

                    <!--                If type != plu,(which is only in cases like <persName corresp="Zundania">Zundanian</persName> or in cases like <persName corresp="#OccamWilliam>William</persname>),
                    Then check the corresp against the xml:ids in the placeography and if a match exists, then add the namesapce {xmlns="tei"} and change the attribute "corresp" to "ref" -->
                    <xsl:otherwise>
                        <xsl:choose>
                            <xsl:when test="matches(substring-after($currentCorresp, '#'), .)">
                                <persName type="cypher" subtype="sing" xmlns="tei">
                                    <xsl:attribute name="ref" select="$currentCorresp"/>
                                    <xsl:value-of select="$currentpersName"/>
                                    <xsl:apply-templates/>
                                </persName>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:if>

        </xsl:for-each>
    </xsl:template>

    <xsl:template match="tei:placeName[@corresp != '']">
        <xsl:variable name="ref" select="@corresp"/>
        <placeName type="cypher" subtype="place" xmlns="tei">
            <xsl:attribute name="ref">
                <xsl:value-of select="$ref"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </placeName>
    </xsl:template>


    <!--Transform each note tag of type="foot" in the text into a ref tag, 
        use its current label as a target that points to a matching editorial "endnote"-->
    <xsl:template match="tei:note[@type eq 'foot']">
        <xsl:variable name="label" select="./@corresp"/>
        <ref type="editorial" xmlns="tei">
            <xsl:attribute name="target">
                <xsl:value-of select="concat('#', $label)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </ref>
    </xsl:template>

    <xsl:template match="tei:text">
        <text xmlns="tei">
            <xsl:apply-templates/>
            <xsl:for-each select=".//tei:note[@type eq 'foot']">
                <xsl:variable name="label" select="./@corresp"/>
                <xsl:variable name="no-hashtag-label" select="substring-after($label, '#')"/>
                <xsl:choose>
                    <xsl:when test="contains($label, '#')">
                        <note type="editorial" resp="#AZ">
                            <xsl:attribute name="xml:id">
                                <xsl:value-of select="$no-hashtag-label"/>
                            </xsl:attribute>
                            <xsl:value-of select="./@ana"/>
                        </note>
                    </xsl:when>
                    <xsl:otherwise>
                        <note type="editorial" resp="#AZ">
                            <xsl:attribute name="xml:id">
                                <xsl:value-of select="$label"/>
                            </xsl:attribute>
                            <xsl:value-of select="./@ana"/>
                        </note>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
        </text>

    </xsl:template>


</xsl:stylesheet>
