<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <title>Lista de Empleados</title>
        </head>
        <body>
            <h1>Lista de Empleados</h1>
            <xsl:apply-templates select="//empleado">
            <xsl:sort select="salario" order="descending" />
            </xsl:apply-templates>
        </body>
        </html>
    </xsl:template>

    <xsl:template match="empleado">
        <p>
        <strong>Nombre: </strong><xsl:value-of select="nombre" /><br />
        <strong>Salario: </strong><xsl:value-of select="salario" />
        </p>
    </xsl:template>
</xsl:stylesheet>