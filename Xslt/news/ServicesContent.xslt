<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:if test="position() = 1">
			<section class="service-1 main-line">
				<div class="container">
					<div class="row">
						<div class="col w-full xl:w-7/12">
							<h2 class="main-title line text-left">
								<xsl:value-of disable-output-escaping="yes" select="News/Title"></xsl:value-of>
								<xsl:value-of select="News/EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h2>
							<div class="content-sv">
								<xsl:value-of disable-output-escaping="yes" select="News/FullContent"></xsl:value-of>
							</div>
						</div>
						<div class="col w-full xl:w-5/12">
							<a data-fancybox="video">
								<xsl:attribute name="href">
									<xsl:value-of select="News/BriefContent"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="News/Title"></xsl:value-of>
								</xsl:attribute>
								<div class="image">
									<img>
									<xsl:attribute name="src">
										<xsl:value-of select="News/ImageUrl"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="alt">
										<xsl:value-of select="News/Title"></xsl:value-of>
									</xsl:attribute>
									</img>
								</div>
							</a>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>