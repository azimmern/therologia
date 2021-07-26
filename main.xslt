<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei"
    version="2.0">
    
        
        <xsl:output omit-xml-declaration="yes" indent="yes" encoding="UTF-8" method="html"/>
        <xsl:strip-space elements="*"/>
        
        
        <xsl:template match="/">
            <xsl:apply-templates/>
        </xsl:template>
        
        <xsl:template match="tei:TEI">
            <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;
        </xsl:text>
            
            <html>
                <head>
                    <!--                place to throw in secret metadata key words, but also a place to throw in a script. In our case a Jquery -->
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
                </head>
                
                <body onload="setDefaultText()">
                    <xsl:apply-templates/>
                </body>
                
                <br/>
                <br/>
                <br/>
                
                <input type="radio" id="cyphbutton" name="chooseCypher">
                    <label>cypher</label>    
                </input>
                
                <input type="radio" id="dcyphbutton" name="chooseCypher">
                    <label>decypher</label>
                </input>
                
                <script type="text/javascript">
                    
                    
                    
                    function setDefaultText(){
                    $("span.decypher").hide();
                    }
                    
                    
                    $('#dcyphbutton').click(function(){
                    <!--                alert("It worked!");-->
                    $("span.decypher").show();
                    $("span.cypher").hide();
                    });
                    
                    $('#cyphbutton').click(function(){
                    $("span.cypher").show();
                    $("span.decypher").hide();
                    });
                </script>
                
                
            </html>
        </xsl:template>
        
    <xsl:template match="tei:note">
        <span>
            <xsl:attribute name="class">Footnote</xsl:attribute>
        </span>  
    </xsl:template>


    <xsl:template match="tei:sic">
        <span>
            <xsl:attribute name="class">sic</xsl:attribute>
        </span>   
    </xsl:template>
    
    
    <xsl:template match="tei:corr">        
            <span>
                <xsl:attribute name="class">corr</xsl:attribute>
            </span>  
    </xsl:template>
    
    
    <xsl:template match="tei:head">
            <xsl:variable name="currentHead" select="@type"/>
            <!--<xsl:for-each select="/tei:TEI/tei:text/tei:body/tei:div/tei:head">-->
                
                <xsl:choose>
                    <xsl:when test="matches($currentHead, 'sub')">
                
                      <span>
                          <xsl:attribute name="class">SectionSummary</xsl:attribute>
                          <xsl:value-of select="."/>
                      </span>
                    </xsl:when>
                    
                    <xsl:when test="matches($currentHead, 'index')">
                        <span>
                            <xsl:attribute name="class">AlphaIndex</xsl:attribute>
                            <xsl:value-of select="."/>
                        </span>
                    </xsl:when>
                    
                <xsl:otherwise>
                    
                    <br><br>
                        
                    <span>
                        <xsl:attribute name="class">SectionTitle</xsl:attribute>
                        <xsl:value-of select="."/>
                    </span>
                    </br></br>
                </xsl:otherwise>
                    
                
                </xsl:choose>
                    
                
            <!--</xsl:for-each>-->
        </xsl:template>
        
        
        <xsl:template match="tei:placeName">
            
            <xsl:variable name="currentPlace" select="@corresp"/>
            <xsl:for-each
                select="/tei:TEI/tei:teiHeader/tei:profileDesc/tei:settingDesc/tei:listPlace/tei:place/@xml:id">
                <xsl:if test="matches(substring-after($currentPlace, '#'), .)">
                    
                    <span>
                        <xsl:attribute name="class">cypher</xsl:attribute>
                        <xsl:value-of select="."/>
                    </span>
                    <span>
                        <xsl:attribute name="class">decypher</xsl:attribute>
                        <xsl:value-of select="../tei:placeName"/>
                    </span>
                    
                </xsl:if>
            </xsl:for-each>
        </xsl:template>
        
        <!--    Now we're going to match all the tei:persName tags, e.g. a "Cuprinian" or "Cuprinians".
    Then, define a variable "currentPersName" that stores the "corresp" content, e.g. corresp="#Cuprinia", of each tei:persName.
    And, define a variable "currentPersNametype" that
    Then, run a for-each loop for each place(xml:id), e.g. Cuprinia, in the placeography (i.e. listPlace).
    Then test to see if the variable currentPersName (with its # removed) matches the place(xml:id). 
    
    If so, choose:
    When "currentpersNametype" contains "plu" then in highlight write the "tei:note" (the plural forms, "Swedes") in lieu of the original persName (Cuprinians)
    Otherwise, in highlights write the tei:label (the singular form, Swede) in lieu of the original persName (Cuprinian) -->
        
        <xsl:template match="tei:persName">
            
            <xsl:variable name="origPersName" select="."/>
            <xsl:variable name="currentPersName" select="@corresp"/>
            <xsl:variable name="currentPersNametype" select="@type"/>
            <xsl:for-each
                select="/tei:TEI/tei:teiHeader/tei:profileDesc/tei:settingDesc/tei:listPlace/tei:place/@xml:id">
                <xsl:if test="matches(substring-after($currentPersName, '#'), .)">
                    
                    <xsl:choose>
                        <xsl:when test="contains($currentPersNametype, 'plu')">
                            
                            <span>
                                <xsl:attribute name="class">cypher</xsl:attribute>
                                <xsl:value-of select="$origPersName"/>
                            </span>
                            <span>
                                <xsl:attribute name="class">decypher</xsl:attribute>
                                <xsl:value-of select="../tei:trait/tei:note"/>
                            </span>
                            
                        </xsl:when>
                        
                        <xsl:otherwise> 
                            
                            <span>
                                <xsl:attribute name="class">cypher</xsl:attribute>
                                <xsl:value-of select="$origPersName"/>
                            </span>
                            <span>
                                <xsl:attribute name="class">decypher</xsl:attribute>
                                <xsl:value-of select="../tei:trait/tei:label"/>
                            </span>
                        </xsl:otherwise>
                    </xsl:choose>
                    
                    
                </xsl:if>
            </xsl:for-each>
        </xsl:template>
        
        <!--Lastly, we're going to match all the tei:name tags, e.g. <name type="adj" corresp="#Cuprinia">
        -->
        
        <xsl:template match="tei:name">
            
            <xsl:variable name="origName" select="."/>
            <xsl:variable name="currentName" select="@corresp"/>
            <xsl:variable name="currentNametype" select="@type"/>
            <xsl:for-each
                select="/tei:TEI/tei:teiHeader/tei:profileDesc/tei:settingDesc/tei:listPlace/tei:place/@xml:id">
                <xsl:if test="matches(substring-after($currentName, '#'), .)">
                    
                    <xsl:choose>
                        <xsl:when test="contains($currentNametype, 'adj')">
                            <span>
                                <xsl:value-of select="$origName"/>
                            </span>
                            <span>
                                <xsl:value-of select="../tei:trait/tei:desc"/>
                            </span>
                        </xsl:when>
                    </xsl:choose>
                    
                </xsl:if>
            </xsl:for-each>
            
        </xsl:template>
        
        
        
        
    </xsl:stylesheet>
 