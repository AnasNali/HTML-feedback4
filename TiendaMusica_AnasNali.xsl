<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"> 
    <xsl:template match="/">
    <html>
        <body>
        <center>
        <h1>Ejercicio 1</h1>
            <table border="1">
                <tr>
                    <th>TITULO</th>
                    <th>GRUPO</th>
                    <th>CLASIFICACION</th>
                    <th>AÑO</th>
                    <th>SINGLE</th>
                </tr>
                <xsl:for-each select="//musica">
                <tr>
                    <td><xsl:value-of select="titulo"/></td>
                    <td><xsl:value-of select="grupo"/></td>
                    <td><xsl:value-of select="tipo/@formato"/></td>
                    <td><xsl:value-of select="ano"/></td>
                    <td><xsl:value-of select="single"/></td>
                </tr>
                </xsl:for-each>
            </table>

            <br></br><br></br><br></br>

            <h1>Ejercicio 2</h1>
            <table border="1">
                <tr>
                    <th>TITULO</th>
                    <th>GRUPO</th>
                    <th>CLASIFICACION</th>
                    <th>AÑO</th>
                    <th>SINGLE</th>
                    <th>IDIOMA</th>
                </tr>
                <xsl:for-each select="//musica">
                <xsl:if test="@idioma='en'">
                 <tr>
                    <td><xsl:value-of select="titulo"/></td>
                    <td><xsl:value-of select="grupo"/></td>
                    <td><xsl:value-of select="tipo/@formato"/></td>
                    <td><xsl:value-of select="ano"/></td>
                    <td><xsl:value-of select="single"/></td>
                    <td><xsl:value-of select="@idioma"/></td>
                </tr>
                </xsl:if>
                </xsl:for-each>
            </table>

            <br></br><br></br><br></br>

            <h1>Ejercicio 3</h1>
            <table border="1">  
                <tr>
                    <th>TITULO</th>
                    <th>GRUPO</th>
                    <th>CLASIFICACION</th>
                    <th>AÑO</th>
                    <th>SINGLE</th>
                    <th>IDIOMA</th>
                </tr>
                <xsl:for-each select="//musica">
                <xsl:if test="@idioma='es'">
                 <tr>
                    <td><xsl:value-of select="titulo"/></td>
                    <td><xsl:value-of select="grupo"/></td>
                    <td><xsl:value-of select="tipo/@formato"/></td>
                    <td><xsl:value-of select="ano"/></td>
                    <td><xsl:value-of select="single"/></td>
                    <td><xsl:value-of select="@idioma"/></td>
                </tr>
                </xsl:if>
                </xsl:for-each>
            </table>

            <br></br><br></br><br></br>

                <h1>Ejercicio 4</h1>
                <table border="1">  
                <tr>
                    <th>TITULO</th>
                    <th>GRUPO</th>
                    <th>CLASIFICACION</th>
                    <th>AÑO</th>
                    <th>SINGLE</th>
                    <th>IDIOMA</th>
                </tr>
                <xsl:for-each select="//musica">
                <xsl:if test="ano &gt;'2000'">
                 <tr>
                    <td><xsl:value-of select="titulo"/></td>
                    <td><xsl:value-of select="grupo"/></td>
                    <td><xsl:value-of select="tipo/@formato"/></td>
                    <td><xsl:value-of select="ano"/></td>
                    <td><xsl:value-of select="single"/></td>
                    <td><xsl:value-of select="@idioma"/></td>
                </tr>
                </xsl:if>
                </xsl:for-each>
            </table>

            <br></br><br></br><br></br>

               <h1>Ejercicio 5</h1>
               <table border="1">  
                <tr>
                    <th>TITULO</th>
                </tr>
                <xsl:for-each select="TiendaMusica/musica[3]">
                 <tr>
                    <td><xsl:value-of select="titulo"/></td>
                </tr>
                </xsl:for-each>
            </table>

            <br></br><br></br><br></br>

            <h1>Ejercicio 6</h1>
             <table border="1">  
                <tr>
                    <th>TITULO</th>
                </tr>
                <xsl:for-each select="TiendaMusica/musica[last()-1]">
                 <tr>
                    <td><xsl:value-of select="titulo"/></td>
                </tr>
                </xsl:for-each>
            </table>

            <br></br><br></br><br></br>

            <h1>Ejercicio 7</h1>
            <table border="1">  
                <tr>
                    <th>Numero de albumes</th>
                </tr>
                <xsl:for-each select="TiendaMusica">
                 <tr>
                    <td><xsl:value-of select="count(musica)"/></td>
                </tr>
                </xsl:for-each>
            </table>
            </center>
        </body>
    </html>
   </xsl:template>
</xsl:stylesheet>
