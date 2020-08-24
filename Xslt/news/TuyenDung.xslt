<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="container">
			<h3 class="title text-center mb-10">
				<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
			</h3>
			<div class="table-red">
				<table>
					<thead>
						<tr>
							<th>STT</th>
							<th>Vị trí</th>
							<th>Số lượng</th>
							<th>Khu vực</th>
							<th>Thời hạn</th>
						</tr>
					</thead>
					<tbody>
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</tbody>
				</table>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News">
		<tr>
			<td>
				<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
			</td>
			<td>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title"></xsl:value-of>
				</a>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
			</td>
		</tr>
	</xsl:template>

</xsl:stylesheet>