<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position()=1">

			<section class="transport-3 main-line">
				<div class="container">
					<h2 class="main-title line text-center">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</h2>
					<xsl:apply-templates select="News"></xsl:apply-templates>
				</div>
			</section>
			<section class="transport-4 main-line">
				<div class="container">
					<xsl:apply-templates select="News" mode='Sub'></xsl:apply-templates>
				</div>
			</section>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News">
		<xsl:if test="position()=1 or position() =2">
			<div class="row main-child items-center">
				<div class="col w-full lg:w-1/2">
					<div class="content">
						<h3 class="title">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h3>
						<div class="description">
							<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
						</div>
					</div>
					<div class="hotline-number">
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</div>
				</div>
				<div class="col w-full lg:w-1/2">
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
			</div>

		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode='Sub'>
		<xsl:if test="position()>2">

			<div class="wrapper main-child">
				<h3 class="main-title">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</h3>
				<div class="description">
					<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
				</div>
				<div class="table-wrapper">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</div>
		</xsl:if>

	</xsl:template>
</xsl:stylesheet>
