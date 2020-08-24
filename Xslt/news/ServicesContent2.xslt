<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone">

		<xsl:if test="position() = 3">
			<section class="service-3 main-line">
				<div class="container">
					<h3 class="title-sv">
						<xsl:value-of disable-output-escaping="yes" select="News/Title"></xsl:value-of>
					</h3>
					<div class="content-sv">
						<xsl:value-of disable-output-escaping="yes" select="News/FullContent"></xsl:value-of>
					</div>
				</div>
			</section>
		</xsl:if>

		<xsl:if test="position() = 4">
			<section class="service-4 main-line">
				<div class="container">
					<h3 class="title-sv">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</h3>
					<p>
						<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
					</p>
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="News" mode="ZoneNews-4"></xsl:apply-templates>
						</div>
						<div class="swiper-prev"><em class="mdi mdi-chevron-left"></em></div>
						<div class="swiper-next"><em class="mdi mdi-chevron-right"></em></div>
					</div>
					<xsl:value-of disable-output-escaping="yes" select="News[1]/BriefContent"></xsl:value-of>
				</div>
			</section>
		</xsl:if>

		<xsl:if test="position() = 5">
			<section class="service-5 main-line">
				<div class="container">
					<h3 class="title-sv">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</h3>
					<div class="title-child text-center">
						<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
					</div>
					<div class="row">
						<xsl:apply-templates select="News" mode="ZoneNews-5"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>

		<xsl:if test="position() = 6">
			<section class="service-6 main-line">
				<div class="container">
					<h3 class="title-sv">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</h3>
					<div class="row">
						<xsl:apply-templates select="News" mode="ZoneNews-6"></xsl:apply-templates>

					</div>
				</div>
			</section>
		</xsl:if>

		<xsl:if test="position() = 7">
			<section class="service-7 main-line">
				<div class="container">
					<h3 class="title-sv">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</h3>
					<xsl:apply-templates select="News" mode="ZoneNews-7"></xsl:apply-templates>
					<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
				</div>
			</section>
		</xsl:if>

		<xsl:if test="position() = 8">
			<section class="service-8 main-line">
				<xsl:apply-templates select="News" mode="ZoneNews-8"></xsl:apply-templates>
			</section>
		</xsl:if>

	</xsl:template>

	<xsl:template match="News" mode="ZoneNews-4">
		<div class="swiper-slide">
			<div class="combo">
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
				<div class="desc">
					<h5>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h5>
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews-5">
		<div class="col w-full xl:w-1/2 ">
			<div class="step-wrapper">
				<div class="step">
					<div class="icon">
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<p>
						<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>

					</p>
				</div>
				<div class="content-sv">
					<h5 class="title">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h5>
					<p>
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</p>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews-6">
		<div class="col w-full sm:w-1/2 lg:w-1/4">
			<div class="list">
				<div class="icon">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<div class="content-sv">
					<h5 class="title">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h5>
					<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews-7">
		<div class="wrapper main-child">
			<h5 class="title text-center">
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</h5>
			<div class="table-wrapper">
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews-8">
		<div class="container">
			<h3 class="title-sv">
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</h3>
			<div class="slide-sv">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
					</div>
				</div>
				<div class="swiper-prev"><em class="mdi mdi-arrow-left"></em></div>
				<div class="swiper-next"><em class="mdi mdi-arrow-right"></em></div>
			</div>
			<div class="description">
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="NewsImages">
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