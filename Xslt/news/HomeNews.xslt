<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="home-7 main-line">
			<div class="container">
				<h2 class="main-title text-center">
					<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
				</h2>
				<div class="slide">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
						</div>
					</div>
					<div class="swiper-prev"><em class="mdi mdi-arrow-left"></em></div>
					<div class="swiper-next"><em class="mdi mdi-arrow-right"></em></div>
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
					<ul>
						<li>
							<em class="mdi mdi-calendar-blank-outline"></em>
							<time>
								<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
							</time>
						</li>
						<li>
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
						</li>
					</ul>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>
