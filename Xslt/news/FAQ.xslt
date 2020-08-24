<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<h2 class="main-title line text-center">
			<xsl:value-of disable-output-escaping="yes" select="/NewsList/ZoneTitle"></xsl:value-of>
		</h2>
		<div class="list-question main-line">
			<h3 class="title-wrapper">
				<xsl:value-of disable-output-escaping="yes" select="/NewsList/ZoneTitle"></xsl:value-of>
			</h3>
			<ul>
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</ul>
		</div>

	</xsl:template>

	<xsl:template match="News">
		<li>
			<div class="question-wrapper">
				<p class="question">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</p>
				<div class="reply">
					<div class="full-content">
						<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					</div>
				</div>
			</div>
		</li>
	</xsl:template>

</xsl:stylesheet>