<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="service">
			<div class="container">
				<h2 class="main-title text-center line">
					<xsl:value-of disable-output-escaping="yes" select="/ZoneList/RootTitle"></xsl:value-of>
				</h2>
			</div>
		</section>
		<section class="home-2 main-line">
			<div class="container">
				<div class="row">
					<div class="col w-full lg:w-1/3">
						<h2 class="title-child">
							<xsl:value-of disable-output-escaping="yes" select="/ZoneList/ModuleTitle">
							</xsl:value-of>
						</h2>
					</div>
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Zone">
		<div class="col w-full lg:w-1/3">
			<div class="list-item">
				<div class="item-wrapper">
					<div class="image-transport">
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
					<div class="content-wrapper">
						<div class="icon">
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="SecondImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>
					</div>
				</div>
				<div class="item-child">
					<div class="image">
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="SecondImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<h3 class="title text-center">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</h3>
					<div class="content">
						<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
					</div>
					<div class="viewmore">
						<a href="#">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:text disable-output-escaping="yes">Xem chi tiết</xsl:text>
						</a>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>
