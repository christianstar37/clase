<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Inventario</title>
                <style>
                    body {font-size: 2em;}
                </style>
            </head>
            <body>
                <ul>
                    <xsl:for-each select="/inventario/producto">
                        <xsl:if test="peso &gt; 7">
                            <li>Elemento <xsl:value-of select="@codigo"/></li>
                            <ul>
                                <li>Nombre: <xsl:value-of select="nombre"/></li>
                                <li>Peso: <xsl:value-of select="peso"/><xsl:value-of select="peso/@unidad"/></li>
                            </ul>
                        </xsl:if>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>