<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <link rel="stylesheet" type="text/css" href="stylesheet_04.css"/>

      <body>
        <!-- PAGE TITLE -->
        <h2>
          <xsl:text disable-output-escaping="yes">Data Model (v4)</xsl:text>
        </h2>

        <!-- LIST ENTITIES -->
        <xsl:for-each select="/entities/entity">

          <!-- ENTITY.NAME -->
          <h3>
            <xsl:value-of select="./name"/>
          </h3>

          <!-- ENTITY.DESCRIPTION -->
          <xsl:value-of select="./description" disable-output-escaping="yes"/>

          <table>

            <!-- ENTITY.FIELDS -->
            <xsl:for-each select="./fields/field">

              <tr>
                <td>
                  <!-- FIELD.NAME -->
                  <xsl:value-of select="./name"/>
                </td>
              </tr>

            </xsl:for-each>

          </table>

        </xsl:for-each>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
