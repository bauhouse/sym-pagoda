<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:template match="/">
	<html>
		<head><title><xsl:value-of select="$website-name" /></title></head>
		<body>
			<h1><xsl:value-of select="$page-title"/></h1>
			<ul><xsl:apply-templates select="data/params/*" /></ul>
		</body>
	</html>
</xsl:template>

<xsl:template match="data/params/*">
	<li>
		<strong><xsl:value-of select="name()" /></strong>:
		<span><xsl:value-of select="." /></span>
	</li>
</xsl:template>

</xsl:stylesheet>