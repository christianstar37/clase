<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <style>
            h1 {font-size: 2em; color: darkblue;}
            h2 {color: darkgreen; margin-bottom: 0px; border-bottom: 1px solid lightgrey;}
            h3 {margin-bottom: 5px; margin-top: 5px;}
            hr {margin-top: 0px;}
        </style>
        <head>
            <title>Curriculum Vitae</title>
        </head>
        <body>
            <div id="nombre">
                <h1><xsl:value-of select="curriculum/nombre"/></h1>
            </div>
            <div id="datos">
                <h2>Datos Personales</h2>
                <b>Teléfono: </b><xsl:value-of select="//numTel"/> <br/>
                <b>Email: </b><xsl:value-of select="//email"/>
            </div>
            <div id="formacion">
                <h2>Formación Académica</h2>
                <xsl:for-each select="//formacion/titulacion">
                    <h3><xsl:value-of select="nombre"/></h3>
                    <xsl:value-of select="tipo"/> <br/>
                    <xsl:value-of select="centro"/> - <xsl:value-of select="nombre/@año"/>
                </xsl:for-each>
            </div>
            <div id="experiencia">
                <h2>Experiencia Profesional</h2>
                <xsl:for-each select="//expProfesional/trabajo">
                    <h3><xsl:value-of select="nombre"/></h3>
                    <xsl:value-of select="empresa"/> | <xsl:value-of select="nombre/@añoInicio"/> - <xsl:value-of select="nombre/@añoFin"/>
                </xsl:for-each>
            </div>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>