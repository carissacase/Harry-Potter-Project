<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml" version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>

    
    <xsl:template match="/">
        <html>
            <head>Speaker analysis</head>
            <body>
        <h1>Names of speakers in each scene</h1>
                <ol><xsl:for-each select="descendant::scene">
                    <li><xsl:value-of select="descendant::speaker/@name=>distinct-values()"/>
                    </li></xsl:for-each></ol>
                
                <h1>Names of speaking characters</h1>
                <ul><xsl:for-each select="descendant::speaker/@name=>distinct-values()">
                    <li><xsl:value-of select="speaker/@name"/>
                    </li></xsl:for-each></ul>
                
                <!--<h1>Number of scenes in which each speaker appears</h1>
                <ul><xsl:for-each select="descendant::scene/speech/speaker/@name=>distinct-values()">
                    <li><xsl:apply-templates select="../scene//speech"/>
                    </li></xsl:for-each></ul>-->
            
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="scene">
        
        
    </xsl:template>
    
    <!--  
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

-->
 <!--  
    <xsl:template match="">
        
    </xsl:template>
    
    <xsl:template match=""></xsl:template>
    --> 
</xsl:stylesheet>