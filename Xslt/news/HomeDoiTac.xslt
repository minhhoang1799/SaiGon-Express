<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<h2 class="main-title text-left">
			<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
		</h2>
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
		</div>
		<div class="button-slide">
			<div class="swiper-prev"><em class="mdi mdi-arrow-left"></em></div>
			<div class="swiper-next"><em class="mdi mdi-arrow-right"></em></div>
		</div>
	</xsl:template>

	<xsl:template match="News">
		<div class="swiper-slide">
			<div class="image">
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>