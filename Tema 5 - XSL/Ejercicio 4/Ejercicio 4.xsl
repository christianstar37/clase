<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
            <title>Ejercicio 4</title>
        </head>
        <body>
            <h2>Libros</h2>
            <ol>
                <xsl:for-each select="libros/libro">
                    <!-- Ordenados por más reciente -->
                    <xsl:sort select="año" data-type="number" order="descending"/>
                    <li><b>Título: </b> <xsl:value-of select="titulo"/> - <b>Autor: </b> <xsl:value-of select="autor"/> - <b>Año: </b> <xsl:value-of select="año"/></li>
                </xsl:for-each>
            </ol>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>