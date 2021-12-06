<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
   
<xsl:template match="/">
    <html>
        <head><title>Harry Potter and the Goblet of Fire</title></head>
        <body>
            <h1>Harry Potter and the Goblet of Fire</h1>
            
            <h2>Table of Contents/Scenes</h2>
            <ol>
                <li>The Riddle House<!--INT.DarkRoom--></li>
                <li>The Portkey<!--Ext.Grassland--></li>
                <li>The Quidditch World Cup<!--Int.Tent--></li>
                <li>The Dark Mark<!--Int.tent--></li>
                <li>Aboard the Hogwarts Express<!--Int.TrainCarriage--></li>
                <li>The Triwizard Tournament<!--Ext.Hogwarts--></li>
                <li>Mad-Eye Moody<!--Int.Classroom--></li>
                <li>The Goblet of Fire<!--Int.Goblet Room--></li>
                <li>The Four Champions<!--Int.Goblet Room Thursday Night--></li>
                <li>The Weighing of the Wands<!--Int.Hogwarts--></li>
                <li>The Hungarian Horntail<!--Ext.Lakeside--></li>
                <li>The First Task<!--Ext.Arena-Tournament Stage 1--></li>
                <li>The Unexpected Task<!--Int.Assembly Room--></li>
                <li>The Yule Ball<!--Int.Dancehall--></li>
                <li>The Egg and the Eye<!--Ext.A Bridge Outside Hogwarts--></li>
                <li>The Second Task<!--Ext.Lakeside--></li>
                <li>The Madness of Mr.Crouch<!--Ext.Above Water for the last time--></li>
                <li>The Pensieve<!--Int Hogwarts Dark Room--></li>
                <li>The Third Task<!--Ext.Arena--></li>
                <li>Flesh, Blood, and Bone<!--Ext.Graveyard--></li>
                <li>The Death Eaters<!--Voldemort-"Hold out your arm"--></li>
                <li>Veritaserum<!--Ext.Arena--></li>
              
            </ol>
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
        <h4><xsl:apply-templates/></h4>
    </xsl:template>
    <xsl:template match="setting">
        <h5><strong><xsl:apply-templates/></strong></h5>
    </xsl:template>
    
</xsl:stylesheet>