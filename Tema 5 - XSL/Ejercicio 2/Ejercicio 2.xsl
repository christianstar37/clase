<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <style>
            th {
                background-color:#1E7B05;
                color:white;
                padding:0.5em;
            }
            td {
                padding:0.5em;
            }
            tr:nth-child(even){
                background:#CCC
            }
            tr:nth-child(odd){
                background:#FFF
            }   	 
        </style>
        <body>
            <table border="1">
                <tr>
                    <th>País</th>
                    <th>Año</th>
                    <th>Título</th>
                    <th>Autor</th>
                    <th>Museo</th>
                </tr>
                <!-- introduce aquí un bucle que recorra las obras -->
                <xsl:for-each select="obras/obra">
                    <!-- haz que se ordene la salida por el elemento titulo-->
                    <xsl:sort select="titulo" data-type="text"/>
                    <!-- Tienes que añadir un if para que solo muestre los mayores de 1850 ,mejor 1650 -->
                    <xsl:if test="@anyo &gt; 1650">
                        <!-- saca en cada td de la tabla los datos de la columna-->
                        <tr>
                            <td><xsl:value-of select="@pais"/></td>
                            <td><xsl:value-of select="@anyo"/></td>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="autor"/></td>
                            <td><xsl:value-of select="museo"/></td>
                        </tr>
                    </xsl:if>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>