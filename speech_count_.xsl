<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml" version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>

<xsl:template match="/">
    <table>
        <tr>
            <th>Speaker</th>
            <th>Scene count</th>
        </tr>
        <xsl:for-each select="descendant::speaker/@name =>distinct-values()">
            <tr>
                <td><xsl:apply-templates select="parent::speech/speaker/@name"/></td>
                <td><xsl:apply-templates select="ancestor::scene/@n =>distinct-values()=>count() "/></td>
            </tr>
            </xsl:for-each>
            </table>
</xsl:template>   


 <!--  
    <xsl:template match="">
        
    </xsl:template>
    
    <xsl:template match=""></xsl:template>
    --> 
</xsl:stylesheet>