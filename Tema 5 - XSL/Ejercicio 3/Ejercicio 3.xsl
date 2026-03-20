<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <style>
            body { font-size: 2em;}
            strong { color: darkblue;}
        </style>
        <head>
            <title>Ficha del vehículo</title>
        </head>
        <body>
            <h1>Ficha del vehículo</h1>
            <strong>Marca: </strong> <xsl:value-of select="vehiculo/marca"/><br/>
            <strong>Web: </strong> <a href="{vehiculo/web}"><xsl:value-of select="vehiculo/web"/></a><br/>
            <strong>Modelo: </strong> <xsl:value-of select="vehiculo/modelo"/><br/>
            <strong>Precio: </strong> <xsl:value-of select="vehiculo/precio"/>€<br/>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>