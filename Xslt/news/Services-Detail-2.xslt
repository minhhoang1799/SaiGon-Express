<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position()=1">

			<section class="service-detail service-display-1">
				<div class="container">
					<xsl:apply-templates select="News" mode='News-1'></xsl:apply-templates>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=2">
			<section class="service-detail service-display-2">
				<div class="container">
					<xsl:apply-templates select="News" mode='News-2'></xsl:apply-templates>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=3">

			<section class="service-detail service-display-3">
				<div class="container">
					<div class="main-title text-center">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</div>
					<div class="row">
						<xsl:apply-templates select="News" mode='News-3'></xsl:apply-templates>

					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=4">

			<section class="about-us-core about-us-section service-display-4">
				<div class="container">
					<div class="row">
						<div class="col w-full lg:w-1/2">
							<div class="content">
								<div class="main-title text-left">
									<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								</div>
								<div class="toggle-wrapper">
									<xsl:apply-templates select="News" mode='News-4'></xsl:apply-templates>
								</div>
							</div>
						</div>
						<div class="col w-full lg:w-1/2">
							<div class="image-wrap bg-red-border opacity">
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
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=5">
			<section class="service-detail service-display-5">
				<div class="main-title text-center">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</div>
				<div class="container">
					<div class="row">
						<div class="col w-full lg:w-8/12">
							<div class="swiper-service-top">
								<div class="swiper-container">
									<div class="swiper-wrapper">
										<xsl:apply-templates select="News" mode='News-5'></xsl:apply-templates>
									</div>
								</div>
								<div class="btn-right">
									<div class="nav-prev"><span class="mdi mdi-arrow-left"></span></div>
									<div class="nav-next"><span class="mdi mdi-arrow-right"></span></div>
								</div>
							</div>
						</div>
						<div class="col w-full lg:w-4/12">
							<div class="swiper-service-thumb">
								<div class="swiper-container">
									<div class="swiper-wrapper">

										<xsl:apply-templates select="News" mode='Thumbs'></xsl:apply-templates>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode='News-1'>
		<div class="row">
			<div class="col w-full lg:w-1/2">
				<div class="content">
					<div class="main-title text-left">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="caption">
						<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					</div>
				</div>
			</div>
			<div class="col w-full lg:w-1/2">
				<div class="image-wrap opacity">
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
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-2'>
		<div class="main-title text-center">
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="zone-description">
			<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
		</div>
		<div class="table-red">
			<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-3'>
		<div class="col w-full sm:w-1/2 lg:w-4/12">
			<div class="col-match-height">
				<div class="item">
					<div class="image-wrapper">

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
					<div class="caption">
						<div class="text">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
					<div class="over-layout">
						<div class="icon">
							<div class="wrap">
								<img>
								<xsl:attribute name="src">
									<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								</img>
							</div>
						</div>
						<div class="title">Lợi ích của kho</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-4'>
		<div class="toggle-item">
			<div class="title">
				<div class="icon">
					<div class="wrap">
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div><span>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</span>
				</div><em class="mdi mdi-chevron-down"></em>
			</div>
			<article>
				<div class="caption">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</article>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-5'>
		<div class="swiper-slide">
			<div class="row">
				<div class="col w-full md:w-7/12">
					<div class="image-wrapper">
						<a>
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
				<div class="col w-full md:w-5/12">
					<div class="item">
						<div class="icon">
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>
						<div class="title">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</div>
						<div class="caption">
							<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='Thumbs'>
		<div class="swiper-slide">
			<div class="item">
				<div class="icon">
					<div class="wrap">
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
				</div>
				<div class="content">
					<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
