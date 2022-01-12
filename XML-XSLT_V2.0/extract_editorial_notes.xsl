<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei" version="2.0">
    
    
    <xsl:output omit-xml-declaration="yes" indent="yes" encoding="UTF-8" method="html"/>
    <xsl:strip-space elements="*"/>
    
    
    <xsl:template match="/">
       
       <xsl:for-each select="tei:ref">
           <xsl:value-of select="."/>
       </xsl:for-each>
        <!--<xsl:apply-templates select="tei:ref"/>-->
        
    </xsl:template>
    
    <!--<xsl:template match="tei:ref">
        <xsl:value-of select="."/>
    </xsl:template>-->
    
    
</xsl:stylesheet>