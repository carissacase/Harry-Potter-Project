<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
   
<xsl:template match="/">
    <html>
        <link rel="stylesheet" type="text/css" href="index.css"/>
        <head><title>Harry Potter and the Goblet of Fire</title></head>
        <body>
            <h1>Harry Potter and the Goblet of Fire</h1>
            
            <h2><xsl:text>Scenes: </xsl:text><xsl:apply-templates select="//scene" mode="toc"/></h2>
            
            <xsl:apply-templates/>         
   </body>
    </html>
  </xsl:template>
 
    <xsl:template match="speech">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    <xsl:template match="sd">
        <p><xsl:apply-templates/></p>
    </xsl:template>
   <xsl:template match="speaker">
        <strong><xsl:apply-templates/></strong>
    </xsl:template>
   <xsl:template match="scene">
        <div id="{@n}"><xsl:apply-templates/></div>
    </xsl:template>
    <xsl:template match="scene" mode="toc">
        <a href="#{@n}"><xsl:value-of select="@n"/></a><xsl:text>&#xA0;&#xA0;&#xA0;</xsl:text>
    </xsl:template>
    <xsl:template match="setting">
        <h4><i><xsl:apply-templates/></i></h4>
    </xsl:template>
    
</xsl:stylesheet>