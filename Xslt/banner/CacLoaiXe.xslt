<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="feature-section main-line">
			<div class="container">
				<h2 class="main-title" data-aos="fade-down" data-aos-easing="linear" data-aos-delay="350" data-aos-duration="750"
					data-aos-offset="200">
					<xsl:value-of disable-output-escaping="yes" select="/BannerList/ModuleTitle"></xsl:value-of>
				</h2>
				<div class="feature-slider" data-aos="fade-up" data-aos-easing="linear" data-aos-delay="150" data-aos-duration="650"
					data-aos-offset="200">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
						</div>
					</div>
					<div class="swiper-next"><em class="mdi mdi-arrow-right"></em></div>
					<div class="swiper-prev"><em class="mdi mdi-arrow-left"></em></div>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="Banner">
		<div class="swiper-slide">
			<div class="item">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</a>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>