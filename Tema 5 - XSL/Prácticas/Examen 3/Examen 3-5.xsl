<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Inventario</title>
                <style>
                    table, th, td {border: 1px solid black; border-collapse: collapse;}
                    td, th {padding: 5px; text-align: center;}
                    tr:nth-child(even) {background-color: lightgray;}
                    table {font-size: 2em;}
                    th {background-color: indigo; color: white;}
                </style>
            </head>
            <body>
                <h1>Edificio A</h1>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Peso</th>
                        <th>Localización</th>
                    </tr>
                    <xsl:for-each select="/inventario/producto">
                        <xsl:sort select="lugar/aula" data-type="int" order="descending"/>
                        <xsl:if test="lugar/@edificio = 'A'">
                            <tr>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="peso"/></td>
                                <td><xsl:value-of select="lugar/@edificio"/><xsl:value-of select="lugar/aula"/></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
                <h1>Edificio B</h1>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Peso</th>
                        <th>Localización</th>
                    </tr>
                    <xsl:for-each select="/inventario/producto">
                        <xsl:sort select="lugar/aula" data-type="int" order="descending"/>
                        <xsl:if test="lugar/@edificio = 'B'">
                            <tr>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="peso"/></td>
                                <td><xsl:value-of select="lugar/@edificio"/><xsl:value-of select="lugar/aula"/></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>