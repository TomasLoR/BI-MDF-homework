<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <title>Zoo Information</title>
      <style>
        body {
          background-color: lightblue; /* Change background color */
          font-family: Arial, sans-serif;
        }
        h1, h2 {
          color: darkgreen; /* Change heading color */
        }
        div {
          border: 1px solid gray;
          padding: 10px;
          margin: 10px;
          background-color: white; /* Change div background color */
        }
      </style>
    </head>
    <body>
      <h1>Zoo Information Report</h1>
      <xsl:apply-templates select="//visitor"/>
      <xsl:apply-templates select="//caretaker"/>
      <xsl:apply-templates select="//ticket"/>
      <xsl:apply-templates select="//zoo"/>
    </body>
  </html>
</xsl:template>

<xsl:template match="visitor">
  <div>
    <h2>Visitor Information</h2>
    <p><strong>URI: </strong><a href="{uri}"><xsl:value-of select="uri"/></a></p>
    <p><strong>Name: </strong><xsl:value-of select="given_name"/> <xsl:text> </xsl:text> <xsl:value-of select="family_name"/></p>
    <p><strong>Age: </strong><xsl:value-of select="age"/></p>
    <p><strong>Satisfaction Level: </strong><xsl:value-of select="satisfaction_level"/></p>
  </div>
</xsl:template>

<xsl:template match="caretaker">
  <div>
    <h2>Caretaker Information</h2>
    <p><strong>URI: </strong><a href="{uri}"><xsl:value-of select="uri"/></a></p>
    <p><strong>Name: </strong><xsl:value-of select="given_name"/> <xsl:text> </xsl:text> <xsl:value-of select="family_name"/></p>
    <p><strong>Age: </strong><xsl:value-of select="age"/></p>
    <p><strong>Specialization: </strong><xsl:value-of select="specialization"/></p>
    <p><strong>Works at Zoo: </strong><a href="{works_at}"><xsl:value-of select="substring-after(works_at, 'http://example.org/zoos/')"/></a></p>
  </div>
</xsl:template>

<xsl:template match="ticket">
  <div>
    <h2>Ticket Information</h2>
    <p><strong>URI: </strong><a href="{uri}"><xsl:value-of select="uri"/></a></p>
    <p><strong>Ticket Number: </strong><xsl:value-of select="ticket_number"/></p>
    <p><strong>Price: </strong>$<xsl:value-of select="price"/></p>
  </div>
</xsl:template>

<xsl:template match="zoo">
  <div>
    <h2>Zoo Information</h2>
    <p><strong>URI: </strong><a href="{uri}"><xsl:value-of select="uri"/></a></p>
    <p><strong>Name: </strong><xsl:value-of select="name"/></p>
    <p><strong>Address: </strong><xsl:value-of select="address"/></p>
  </div>
</xsl:template>

</xsl:stylesheet>