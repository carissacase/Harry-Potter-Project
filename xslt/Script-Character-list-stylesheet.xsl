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
                <h1>Harry Potter Project</h1>
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
                                <a href="/Harry-Potter-Project/html-css/discussion.html">Discussion</a>
                            </div>                                 
                        </div>
                    </div>
                </div>
                <p>This project was conducted in order to compare the Harry Potter: Goblet of Fire novel and movie to see how the plot differentiates between the two. To analyze the novel, we used Regex and XML markup to find every single time a character, spell, or creature spoke or was mentioned. They were tagged so we could then compile a list of which characters, spells, and c were mentioned in which scene.  </p>
                <p>One thing that we would change with this method is rather than just tagging when each character was mentioned, we would tag when the character was participating in dialogue so we could then compare with how many times the character participated in dialogue in the movie script. This would give a more comprehensive comparison of the plot of the novel and the movie.</p> 
               
                <xsl:apply-templates select="//div"/>
                <!-- more text of webpage here -->
            </body></html>
    </xsl:template>
    
    <xsl:template match="div">
        <ol><xsl:apply-templates select="scene"/></ol>
    </xsl:template>
    
    <xsl:template match="scene">
        
        <li><u><xsl:apply-templates select="@n"/></u><br/>
            
            <b><xsl:if test="count(.//speaker/@name) &gt; 0"><xsl:text>Characters included: </xsl:text></xsl:if></b><xsl:apply-templates select="string-join(distinct-values(.//speaker/@name/translate(., '_', ' ')), '; ')"/><br/>
            <xsl:if test="count(.//spell) &gt; 0"><b><xsl:text>Spells included: </xsl:text></b><xsl:apply-templates select="string-join(distinct-values(.//spell), '; ')"/><br/></xsl:if>
            <xsl:if test="count(.//creature) &gt; 0"><b><xsl:text>Creatures included: </xsl:text></b><xsl:apply-templates select="string-join(distinct-values(.//creature/@name/translate(., '_', ' ')), '; ')"/><br/></xsl:if>
        </li><br/>
    </xsl:template>
</xsl:stylesheet>
