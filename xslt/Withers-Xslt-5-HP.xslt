<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml" version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    
    <xsl:template match="/">
        <html><head><meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <link rel="stylesheet" type="text/css" href="index.css"/> </head><body>
                <h1>Harry Potter and the Goblet of Fire Project</h1>
                <div id="navbar">
                    <div class="navbar">
                        <a href="/Harry-Potter-Project/index.xhtml">Home</a>
                        <div class="dropdown">
                            <button class="dropbtn">About</button>
                            <div class="dropdown-content">
                                <a href="/Harry-Potter-Project/html-css/team.html">Harry Potter Project Staff</a>
                                <a href="/Harry-Potter-Project/html-css/goals.html">Legacy</a>
                                <a href="/Harry-Potter-Project/html-css/methodology.html">Methodology</a>                       
                            </div>
                        </div>           
                        <a href="/Harry-Potter-Project/html-css/HPscript.html">Movie Script</a>
                        <div class="dropdown">
                            <button class="dropbtn">Content</button>
                            <div class="dropdown-content">
                                <a href="/Harry-Potter-Project/html-css/Character-list-output.html">Book Chapter Analysis</a>
                                <a href="/Harry-Potter-Project/html-css/Script-Character-list-output.html">Movie Scene Analysis</a>
                                <a href="/Harry-Potter-Project/html-css/discussion.html">Discussion</a>
                            </div>                                 
                        </div>
                        <div class="dropdown">
                            <button class="dropbtn">Reference</button>
                            <div class="dropdown-content">
                                <a href="/Harry-Potter-Project/html-css/discussion.html">Movie Script Source</a>
                                
                            </div>                                 
                        </div>
                    </div>
                </div>
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
       <h4><i>Scene <xsl:value-of select="@n"/></i></h4><div id="{@n}"><xsl:apply-templates/></div>
    </xsl:template>
    <xsl:template match="scene" mode="toc">
        <a href="#{@n}"><xsl:value-of select="@n"/></a><xsl:text>&#xA0;&#xA0;&#xA0;</xsl:text>
    </xsl:template>
   <!-- <xsl:template match="scene">
        <h4><i>Scene <xsl:value-of select="@n"/></i></h4>
    </xsl:template>-->
    <xsl:template match="setting">
        <h4><i><xsl:apply-templates/></i></h4>
    </xsl:template>
</xsl:stylesheet>
