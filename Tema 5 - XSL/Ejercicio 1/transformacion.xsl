<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Productos</title>
                <style>
                    body { font-family: Arial, sans-serif; background-color: #f4f4f4; }
                    h2 { color: #333; }
                    ul { background: white; padding: 15px; border-radius: 5px; box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1); }
                    li { padding: 5px; color: red; }
                </style>
            </head>
            <body>
                <h2>Productos Disponibles</h2>
                <ul>
                    <xsl:for-each select="productos/producto">
                        <li>
                            <strong><xsl:value-of select="nombre"/></strong> - $<xsl:value-of select="precio"/>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>