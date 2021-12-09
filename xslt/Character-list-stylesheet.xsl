<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml" version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <html><head><!-- add css link --></head><body>
            <!-- text of webpage here -->
            <xsl:apply-templates select="//story"/>
            <!-- more text of webpage here -->
        </body></html>
    </xsl:template>
    
    <xsl:template match="story">
        <ol><xsl:apply-templates select="chapter"/></ol>
    </xsl:template>
    
    <xsl:template match="chapter">
        
        <li><u><xsl:apply-templates select="@chapTitle"/></u><br/>
            <b><xsl:text>Characters included: </xsl:text></b><xsl:apply-templates select="string-join(distinct-values(.//character/@charName/translate(., '_', ' ')), '; ')"/><br/>
            <xsl:if test="count(.//spell) &gt; 0"><b><xsl:text>Spells included: </xsl:text></b><xsl:apply-templates select="string-join(distinct-values(.//spell), '; ')"/><br/></xsl:if>
            <xsl:if test="count(.//creature) &gt; 0"><b><xsl:text>Creatures included: </xsl:text></b><xsl:apply-templates select="string-join(distinct-values(.//creature/@name/translate(., '_', ' ')), '; ')"/><br/></xsl:if>
        </li><br/>
    </xsl:template>
</xsl:stylesheet>
