<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone[2]"></xsl:apply-templates>

	</xsl:template>

	<xsl:template match="Zone">
		<section class="home-4 main-line">
			<div class="container">
				<div class="row justify-between">
					<xsl:apply-templates select="News"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="News">
		<div class="col w-1/2 md:w-1/6">
			<div class="item" data-aos="zoom-in" data-aos-easing="linear" data-aos-delay="250" data-aos-duration="750"
				data-aos-offset="200">
				<xsl:if test="position() =2">
					<xsl:attribute name="data-aos-delay">
						<xsl:text>550</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:if test="position() =3">
					<xsl:attribute name="data-aos-delay">
						<xsl:text>850</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:if test="position() =4">
					<xsl:attribute name="data-aos-delay">
						<xsl:text>1150</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:if test="position() =5">
					<xsl:attribute name="data-aos-delay">
						<xsl:text>1450</xsl:text>
					</xsl:attribute>
				</xsl:if>
			
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
				<div class="content">
					<h3 class="title">
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</h3>
					<p>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>