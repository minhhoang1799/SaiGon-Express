<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="wrapper main-child">
			<h3 class="main-title">
				<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
			</h3>
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="list-question main-line">
			<ul>
				<xsl:apply-templates select="News"></xsl:apply-templates>
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
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</div>
		</li>
	</xsl:template>
</xsl:stylesheet>
