<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:if test="position() = 6">
			<section class="transport-4 main-line transport-last-padding">
				<div class="container">
					<div class="wrapper main-child">
						<h3 class="main-title">
							<xsl:value-of disable-output-escaping="yes" select="News/Title"></xsl:value-of>
							<xsl:value-of select="ews/EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h3>
						<div class="container">
							<div class="row list-image">
								<xsl:apply-templates select="News/NewsImages"></xsl:apply-templates>
								<div class="col w-full">
									<xsl:value-of disable-output-escaping="yes" select="News/FullContent"></xsl:value-of>
								</div>
								<div class="btn-right">
									<div class="hotline-number">
										<xsl:value-of disable-output-escaping="yes" select="News/BriefContent">
										</xsl:value-of>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>

	<xsl:template match="NewsImages">
		<div>
			<xsl:if test="position() &lt; 3">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">col w-full lg:w-1/2</xsl:text>
				</xsl:attribute>
				<div class="image-full">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
			</xsl:if>
			<xsl:if test="position() > 2">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">col w-full lg:w-1/3</xsl:text>
				</xsl:attribute>
				<div class="image-child">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
			</xsl:if>
		</div>
	</xsl:template>

</xsl:stylesheet>