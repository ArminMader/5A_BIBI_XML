<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version='1.0'
xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
<xsl:template match='/'>
<html>
	<body>
			<span style="color: green">Wetter App Celine und Armin</span>
            <br/>
            
                <h3>Wettervorhersage für:</h3> 
                <xsl:value-of select="weatherdata/location/name"/>
                <xsl:value-of select="weatherdata/location/country"/>
                <br/>
        
            <table border="1">
                <tr>
                    <th>Datum</th>
                    <th>Uhrzeit</th>
                    <th>Beschreibung</th>
                    <th>Windrichtung</th>
                    <th>Windgeschwindigkeit</th>
                    <th>Temperatur</th>
                    <th>Luftdruck</th>
                    <th>Luftfeuchtigkeit</th>
                    <th>Wolken</th>
                </tr>
                <xsl:for-each select="//.">
                   <xsl:if test="name()='time'">
                       
                           <tr>
                               <td>
                                   <xsl:value-of select="substring(@from,0,11)"/>
                                </td>
                                    <td>
                                        <xsl:value-of select="substring(@from,12,5)"/> -  <xsl:value-of select="substring(@to,12,5)"/>
                                    </td>  
                                <td>
                                    <xsl:value-of select="symbol/@name"/>
                                    <br/>
                                    <xsl:if test="symbol/@name = 'few clouds'">
                                        <img src="../XML_Aufgabe6_WetterApp/images/few clouds.png"></img>
                                    </xsl:if>
                                    <xsl:if test="symbol/@name = 'snow'">
                                        <img src="../XML_Aufgabe6_WetterApp/images/snow.png"></img>
                                    </xsl:if>
                                    <xsl:if test="symbol/@name = 'light snow'">
                                        <img src="../XML_Aufgabe6_WetterApp/images/light snow.png"></img>
                                    </xsl:if>
                                    <xsl:if test="symbol/@name = 'clear sky'">
                                        <img src="../XML_Aufgabe6_WetterApp/images/clear sky.png"></img>
                                    </xsl:if>
                               </td>
                               <td>
                                    <xsl:value-of select="windDirection/@name"/>
                               </td>
                               <td>
                                    <xsl:value-of select="windSpeed/@name"/>,
                                    <xsl:value-of select="windSpeed/@mps"/> mph
                               </td>
                                <td>
                                    <xsl:value-of select="temperature/@value"/>
                                    °<xsl:value-of select="temperature/@unit"/>
                               </td>
                               <td>
                                    <xsl:value-of select="pressure/@value"/>
                                    <xsl:value-of select="pressure/@unit"/>
                               </td>
                               <td>
                                    <xsl:value-of select="humidity/@value"/>
                                    <xsl:value-of select="humidity/@unit"/>
                               </td>
                               <td>
                                    <xsl:value-of select="clouds/@value"/>
                               </td>
                           </tr>
                          
                      
                       
                    </xsl:if>
                </xsl:for-each>
                 </table>
        
        
            
            
        
	</body>
</html>
</xsl:template>
</xsl:stylesheet>
