<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="News">
		<section class="storage-information">
			<div class="container">
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				
			</div>
		</section>
	</xsl:template>
</xsl:stylesheet>
