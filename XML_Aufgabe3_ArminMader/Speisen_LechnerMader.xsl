<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
<xsl:template match="/">
    <html>
    <body>
        <h2>Ristorante ala Celine und Armin</h2>
        <table border="1">
            <tr bgcolor="#acd32"> 
                <th style="text-align:left">Tisch</th>
                <th style="text-align:left">Speise</th>
                <th style="text-align:left">Getränke</th>
                <th style="text-align:left">Preis</th>
            </tr>
            <xsl:for-each select="Gaeste/Restaurant">
                <tr>
                <td><xsl:value-of select="Tisch"/></td>
                <td><xsl:value-of select="Speise"/></td>
                <td><xsl:value-of select="Getränk"/></td>
                <td><xsl:value-of select="Preis"/></td>
                </tr>
            </xsl:for-each>
        
        </table>
        </body>
    </html>
    </xsl:template>
    </xsl:stylesheet>