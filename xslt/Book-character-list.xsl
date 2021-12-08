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
                <h1>Names of characters in each chapter</h1>
                <ol><xsl:for-each select="descendant::character">
                    <li><xsl:value-of select="@charName=>distinct-values()"/>
                    </li></xsl:for-each></ol>
                
                <h1>Number of characters in each chapter</h1>
              
                <ol><xsl:for-each select="descendant::chapter">
                    <li><xsl:value-of select="descendant::character/@charName=>distinct-values()=>count()"/>
                    </li></xsl:for-each></ol>
          </body></html>
    </xsl:template>
    
</xsl:stylesheet>