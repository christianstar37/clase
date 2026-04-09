<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Catalog of Hobbies</title>
            </head>
            <body>
                <h1>Catalog of Hobbies</h1>
                <xsl:for-each select="/hobbies/hobby">
                    <h2><xsl:value-of select="name"/></h2>
                    <p><xsl:value-of select="description"/></p>
                    <p>Popularity: <xsl:value-of select="popularity"/></p>
                    <p><xsl:if test="@difficulty">Difficulty: </xsl:if><xsl:value-of select="@difficulty"/></p>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>