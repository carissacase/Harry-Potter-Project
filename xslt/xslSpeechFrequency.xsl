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
               <!-- <h1>Names of speakers in each scene</h1>
                <ol><xsl:for-each select="descendant::scene">
                    <li><xsl:value-of select="descendant::speaker/@name=>distinct-values()"/>
                    </li></xsl:for-each></ol>
                
                <h1>Number of speakers in each scene</h1>
                <ol><xsl:for-each select="descendant::scene">
                    <li><xsl:value-of select="descendant::speaker/@name=>distinct-values()=>count()"/>
                    </li></xsl:for-each></ol>
                
                
                <h1>Names of speaking characters</h1>
                <ul>
                    <xsl:for-each select="distinct-values(//speaker/@name)">
                        <li><xsl:value-of select="."/></li>
                    </xsl:for-each>
                </ul> -->
                <h1>Table of speech frequency</h1>
                <table>
                    <tr><th>Speaker</th><th>Frequency</th></tr>
                    <xsl:for-each-group select="//speaker" group-by="@name">
                        <tr><td><xsl:value-of select="@name"/></td>
                            <td><xsl:value-of select="count(current-group())"/></td></tr>
                    </xsl:for-each-group>
                </table>
                
                
                
            </body></html>
    </xsl:template>
    
</xsl:stylesheet>