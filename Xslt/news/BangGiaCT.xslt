<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone" mode="Zone-1"></xsl:apply-templates>

		<section class="transport-4 main-line">
			<div class="container">
				<xsl:apply-templates select="/ZoneList/Zone" mode="Zone-2"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Zone" mode="Zone-1">
		<xsl:if test="position() = 1">
			<section class="transport-3 main-line">
				<div class="container">
					<h2 class="main-title line text-center">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</h2>
					<xsl:apply-templates select="News" mode="ZoneNews-1"></xsl:apply-templates>
				</div>
			</section>
		</xsl:if>
	</xsl:template>

	<xsl:template match="Zone" mode="Zone-2">
		<xsl:if test="position() = 2">
			<div class="wrapper main-child">
				<h3 class="main-title">
					<xsl:value-of disable-output-escaping="yes" select="News/Title"></xsl:value-of>
				</h3>
				<p class="decs">
					<xsl:value-of disable-output-escaping="yes" select="News/BriefContent"></xsl:value-of>
				</p>
				<div class="over-flow-x">
					<xsl:value-of disable-output-escaping="yes" select="News/FullContent"></xsl:value-of>
				</div>
			</div>
		</xsl:if>

		<xsl:if test="position() > 2 and position() &lt; 6">
			<div class="wrapper main-child">
				<h3 class="main-title">
					<xsl:value-of disable-output-escaping="yes" select="News/Title"></xsl:value-of>
					<xsl:value-of select="News/EditLink" disable-output-escaping="yes"></xsl:value-of>
				</h3>
				<div class="table-wrapper">
					<xsl:value-of disable-output-escaping="yes" select="News/FullContent"></xsl:value-of>
				</div>
			</div>
		</xsl:if>

	</xsl:template>

	<xsl:template match="News" mode="ZoneNews-1">
		<div class="row main-child items-center">
			<div class="col w-full lg:w-1/2">
				<div class="content">
					<h3 class="title">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h3>
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
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
	</xsl:template>

</xsl:stylesheet>
