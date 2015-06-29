<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"/>

<xsl:template match="/">
  <html>
  <head>
  <style type="text/css">
  body { font-family:Georgia, serif; text-align:left; padding:0 20px 20px 20px; }
  table { border:1px solid #ccc; border-right:0; }
  th, td { padding:5px 10px; border-right:1px solid #ccc; }
  td { border-top:1px solid #ccc; }
  .type { text-align:center; }
  </style>
  </head>
  <body>

  <h2>School of Education Degrees</h2>

  <table class="table" cellspacing="0">
    <tr>
      <th>Program</th>
      <th class="type">Bachelor's</th>
      <th class="type">Master's</th>
      <th class="type">Doctoral</th>
    </tr>

    <xsl:for-each select="degrees/degree[school='School of Education']">
    <xsl:sort select="name"/>

    <tr>
      <td class="program">
		<a href="{link}" target="_blank">
		<xsl:value-of select="name"/>
		</a>
        </td>
      <td class="type"><xsl:value-of select="bp"/></td>
      <td class="type"><xsl:value-of select="mp"/></td>
      <td class="type"><xsl:value-of select="dp"/></td>
    </tr>
    </xsl:for-each>
  </table>
  
  </body>
  </html>
  
</xsl:template>
</xsl:stylesheet>

