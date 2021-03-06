<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="home-7 main-line">
			<div class="container">
				<h2 class="main-title text-center" data-aos="fade-down" data-aos-easing="linear" data-aos-delay="350"
					data-aos-duration="750" data-aos-offset="200">
					<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
				</h2>
				<div class="slide" data-aos="fade-up" data-aos-easing="linear" data-aos-delay="150"
					data-aos-duration="650" data-aos-offset="200">
					<div class="swiper-container">
						<div class="swiper-wrapper">

							<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>

						</div>
					</div>
					<div class="button-wrapper-center">
						<div class="nav-arrow-prev">
							<span class='lnr lnr-chevron-left'></span>
						</div>
						<div class="nav-arrow-next">
							<span class='lnr lnr-chevron-right'></span>
						</div>
					</div>
				</div>

			</div>
		</section>
	</xsl:template>

	<xsl:template match="News">
		<div class="swiper-slide">
			<div class="item">
				<div class="image">
					<a href="#">
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
				<div class="content">
					<div class="title">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title"></xsl:value-of>
						</a>
					</div>
					<div class="btn-left">
						<em class="mdi mdi-arrow-right"></em>
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:text disable-output-escaping="yes">Xem thêm</xsl:text>
						</a>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>
