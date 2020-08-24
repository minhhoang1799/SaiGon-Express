<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="personnel main-line">
			<div class="container">
				<h2 class="main-title line text-center">
					<xsl:value-of disable-output-escaping="yes" select="/ZoneList/Zone[1]/Title"></xsl:value-of>
				</h2>
				<div class="row main-child items-center">
					<div class="col w-full md:w-1/2">
						<h3 class="title">
							<xsl:value-of disable-output-escaping="yes" select="/ZoneList/Zone[1]/News/Title">
							</xsl:value-of>
							<xsl:value-of select="/ZoneList/Zone[1]/News/EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h3>
						<div class="content">
							<xsl:value-of disable-output-escaping="yes" select="/ZoneList/Zone[1]/News/FullContent">
							</xsl:value-of>
						</div>
					</div>
					<div class="col w-full md:w-1/2">
						<div class="image">
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="/ZoneList/Zone[1]/News/ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="/ZoneList/Zone[1]/News/Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

</xsl:stylesheet>