<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:if test="position() = 1">
			<section class=" home-3 main-line">
				<div class="container">
					<h2 class="main-title text-center" data-aos="zoom-in" data-aos-easing="linear" data-aos-delay="250"
						data-aos-duration="750" data-aos-offset="200">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</h2>
					<div class="row justify-between">
						<div class="col w-1/2 lg:w-1/4 box-left">
							<div class="list-item">
								<xsl:apply-templates select="News[position() &lt; 4]"></xsl:apply-templates>
							</div>
						</div>
						<div class="col w-1/2 lg:w-1/4 box-right">
							<div class="list-item">
								<xsl:apply-templates select="News[position() > 3]"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News">
		<div class="item" data-aos="fade-up" data-aos-easing="linear" data-aos-delay="350" data-aos-duration="750"
			data-aos-offset="200">
			<xsl:if test="position()= 2 or position()=5">
				<xsl:attribute name="data-aos-delay">
					<xsl:text>650</xsl:text>
				</xsl:attribute>

			</xsl:if>
			<xsl:if test="position()= 3 or position()=6">
				<xsl:attribute name="data-aos-delay">
					<xsl:text>850</xsl:text>
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
				<h3 class="decs">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</h3>
				<p>
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</p>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>
