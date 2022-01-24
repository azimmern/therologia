<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei" version="2.0">
    
    
    <xsl:output omit-xml-declaration="yes" indent="yes" encoding="UTF-8" method="html"/>
    <xsl:strip-space elements="*"/>
    
    
    <!--<xsl:template match="tei:TEI">
        <xsl:apply-templates select="//tei:ref"/>
    </xsl:template>
    
    <xsl:template match="tei:ref">
        <xsl:value-of select="normalize-space(.)"/>
        <xsl:text>|</xsl:text>
        <xsl:value-of select="ancestor::tei:div/@type[1]"/>
        <xsl:value-of select="ancestor::tei:div/@n"/>
        
<!-\-        also get the @target value for the xml:id of the note-\->
        <xsl:text>&#xa;&#xa;</xsl:text>
        
    </xsl:template>-->
    
    
    <xsl:output method="html"/>
    
    <xsl:template match="/">
        <HTML>
            <HEAD>
                <BODY>
                    <h2>SPREADSHEET</h2>
                    
                    
                    
                    <table>
<!--                        Header Row-->
                        <tr>
                            <td>Target/ID</td>
                            <td>Section</td>
                            <td>Ref</td>
                            <td>Note</td>
                            <td>Author</td>
                            <td>Date</td>
                        </tr>
                        
                        <xsl:for-each select="//tei:ref">
                            <xsl:variable name="target" select="./@target"/>
                            <xsl:variable name="section" select="ancestor::tei:div/@type[1]"/>
                            <xsl:variable name="section_no" select="ancestor::tei:div/@n"/>
                            <xsl:variable name="ref" select="."/>
                            
                            <tr>
                                <td>
                                    <xsl:value-of select="substring-after('#', $target)"/>
                                </td>
                                <td>
                                    <xsl:value-of select="$section"/>_<xsl:value-of select="$section_no"/>
                                </td>
                                <td>
                                    <xsl:value-of select="$ref"/>
                                </td>
                                <td>
                                    Enter Note
                                </td>
                                <td>
                                    Enter Author ID (e.g. #AZ)
                                </td>
                            </tr>
                        </xsl:for-each>
                        
                    </table>
                </BODY>
            </HEAD>
        </HTML>
    </xsl:template>
    
</xsl:stylesheet>