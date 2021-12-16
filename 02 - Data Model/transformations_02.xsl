<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <link rel="stylesheet" type="text/css" href="stylesheet_02.css"/>

      <body>
        <!-- PAGE TITLE -->
        <xsl:text disable-output-escaping="yes">&lt;h2&gt;</xsl:text>
        <xsl:text disable-output-escaping="yes">Data Model (v2)</xsl:text>
        <xsl:text disable-output-escaping="yes">&lt;/h2&gt;</xsl:text>

        <!-- LIST ENTITIES -->
        <xsl:for-each select="/entities/entity">

          <!-- NAME -->
          <xsl:text disable-output-escaping="yes">&lt;h3&gt;</xsl:text>
            <xsl:value-of select="./name"/>
          <xsl:text disable-output-escaping="yes">&lt;/h3&gt;</xsl:text>

        </xsl:for-each>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>