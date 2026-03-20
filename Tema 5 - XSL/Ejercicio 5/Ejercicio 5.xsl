<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
            <title>Ejercicio 5</title>
        </head>
        <body>
            <h2>Clasificiación de Alumnos</h2>
            <ul>
                <xsl:for-each select="alumnos/alumno">
                    <li><xsl:value-of select="nombre"/> - Nota: <xsl:value-of select="nota"/> - Clasificación: 
                        <xsl:if test="nota &gt; 8">Sobresaliente</xsl:if>
                        <xsl:if test="nota &gt; 5 and nota &lt; 8">Aprobado</xsl:if>
                        <xsl:if test="nota &lt; 5">Reprobado</xsl:if>
                    </li>
                </xsl:for-each>
            </ul>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>