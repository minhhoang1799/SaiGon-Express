<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone[3]"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone">
		<section class="home-5 main-line">
			<div class="container top-container">
				<div class="row">
					<div class="col w-full lg:w-2/3 " data-aos="fade-right" data-aos-easing="linear" data-aos-delay="400"
						data-aos-duration="750" data-aos-offset="200">
						<h2 class="main-title text-left">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h2>
						<div class="swiper-container gallery-top">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="News" mode="Slide-1"></xsl:apply-templates>
							</div>
							<div class="swiper-next"><em class="mdi mdi-arrow-right"></em></div>
						</div>
					</div>
					<div class="col w-full lg:w-1/3" data-aos="fade-left" data-aos-easing="linear" data-aos-delay="400"
						data-aos-duration="750" data-aos-offset="200">
						<div class="services-form">
							<div class="form-wrapper"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="nav-wrapper">
				<div class="container">
					<div class="swiper-container gallery-thumbs" data-aos="zoom-in" data-aos-easing="linear" data-aos-delay="200"
						data-aos-duration="650" data-aos-offset="200">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="News" mode="Slide-2"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="News" mode="Slide-1">
		<div class="swiper-slide">
			<div class="swiper-content">
				<div class="box-img">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<div class="box-content">
					<div class="content">
						<div class="call-icon">
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>
						<h3 class="title">
							<xsl:text disable-output-escaping="yes">Bước 0</xsl:text>
							<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
							<xsl:text disable-output-escaping="yes">: </xsl:text>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h3>
						<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="Slide-2">
		<div class="swiper-slide">
			<div class="item">
				<div class="step">
					<xsl:text disable-output-escaping="yes">0</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
				</div>
				<div class="box">
					<div class="text">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>