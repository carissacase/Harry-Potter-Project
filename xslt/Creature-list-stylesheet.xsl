<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml" version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <html><head></head><body>
            <xsl:apply-templates select="//story"/>
        </body></html>
    </xsl:template>
    
    <xsl:template match="story">
        <ol><xsl:apply-templates select="chapter"/></ol>
    </xsl:template>
    
    <xsl:template match="chapter">
        
        <li><xsl:apply-templates select="@chapTitle"/><br/>
            <xsl:text>Creatures included: </xsl:text><xsl:apply-templates select="string-join(distinct-values(child::creature), '; ')"/>
        </li>
    </xsl:template>
</xsl:stylesheet>