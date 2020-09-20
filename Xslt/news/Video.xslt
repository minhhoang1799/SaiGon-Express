<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<div class="row media-display-wrapper">
			<div class="col w-full lg:w-1/2">
				<xsl:apply-templates select="/NewsList/News" mode='Big-1'></xsl:apply-templates>
			</div>
			<div class="col w-full lg:w-1/2">
				<div class="row h-full">
					<xsl:apply-templates select="/NewsList/News" mode='Small1'></xsl:apply-templates>
				</div>
			</div>
		</div>
		<div class="row media-display-wrapper">
			<div class="col w-full lg:w-1/2">
				<xsl:apply-templates select="/NewsList/News" mode='Big-2'></xsl:apply-templates>
			</div>
			<div class="col w-full lg:w-1/2">
				<div class="row h-full">
					<xsl:apply-templates select="/NewsList/News" mode='Small2'></xsl:apply-templates>
				</div>
			</div>
		</div>

	</xsl:template>
	<xsl:template match="News" mode='Big-1'>
		<xsl:if test="position()= 1 ">

			<figure class="media-figure media-big image-media">
				<div class="figure-image media-play">
					<div class="wrapper">
						<a>
							<xsl:attribute name="data-thumbs">
								<xsl:text>{"autoStart":true}</xsl:text>
							</xsl:attribute>
							<xsl:attribute name="data-fancybox">
								<xsl:text>gallery-</xsl:text>
								<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="href">
								<xsl:value-of select="BriefContent"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</a>
					</div>




					<div class="hidden">
						<xsl:apply-templates select="NewsImages">
							<xsl:with-param select="position()" name="NewsPosition" />
						</xsl:apply-templates>
					</div>
					<div class="caption">
						<div class="text">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</div>
						<div class="icon"><img src="/Data/Sites/1/media/icon/play-icon.png" alt="" /></div>
					</div>
					<div class="caption-2">
						<div class="text">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</div>
					</div>
				</div>
			</figure>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode='Big-2'>
		<xsl:if test="position()= 6 ">

			<figure class="media-figure media-big image-media">
				<div class="figure-image media-play">
					<div class="wrapper">
						<a>
							<xsl:attribute name="data-thumbs">
								<xsl:text>{"autoStart":true}</xsl:text>
							</xsl:attribute>
							<xsl:attribute name="data-fancybox">
								<xsl:text>gallery-</xsl:text>
								<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="href">
								<xsl:value-of select="BriefContent"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</a>
					</div>
					<div class="hidden">
						<xsl:apply-templates select="NewsImages">
							<xsl:with-param select="position()" name="NewsPosition" />
						</xsl:apply-templates>
					</div>
					<div class="caption">
						<div class="text">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</div>
						<div class="icon"><img src="/Data/Sites/1/media/icon/play-icon.png" alt="" /></div>
					</div>
					<div class="caption-2">
						<div class="text">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</div>
					</div>
				</div>
			</figure>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode='Small1'>
		<xsl:if test="position() > 1 and position() &lt; 6">
			<div class="col w-1/2">
				<figure class="media-figure  image-media">
					<div class="figure-image media-play">
						<div class="wrapper">
							<a>
								<xsl:attribute name="data-thumbs">
									<xsl:text>{"autoStart":true}</xsl:text>
								</xsl:attribute>
								<xsl:attribute name="data-fancybox">
									<xsl:text>gallery-</xsl:text>
									<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="href">
									<xsl:value-of select="BriefContent"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<img>
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								</img>
							</a>
						</div>
						<div class="hidden">
							<xsl:apply-templates select="NewsImages">
								<xsl:with-param select="position()" name="NewsPosition" />
							</xsl:apply-templates>
						</div>
						<div class="caption">
							<div class="text">
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							</div>
							<div class="icon"><img src="/Data/Sites/1/media/icon/play-icon.png" alt="" /></div>
						</div>
						<div class="caption-2">
							<div class="text">
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							</div>
						</div>
					</div>
				</figure>
			</div>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode='Small2'>
		<xsl:if test="position() > 6 ">
			<div class="col w-1/2">
				<figure class="media-figure  image-media">
					<div class="figure-image media-play">
						<div class="wrapper">
							<a>
								<xsl:attribute name="data-thumbs">
									<xsl:text>{"autoStart":true}</xsl:text>
								</xsl:attribute>
								<xsl:attribute name="data-fancybox">
									<xsl:text>gallery-</xsl:text>
									<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="href">
									<xsl:value-of select="BriefContent"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<img>
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								</img>
							</a>
						</div>
						<div class="hidden">
							<xsl:apply-templates select="NewsImages">
								<xsl:with-param select="position()" name="NewsPosition" />
							</xsl:apply-templates>
						</div>
						<div class="caption">
							<div class="text">
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							</div>
							<div class="icon"><img src="/Data/Sites/1/media/icon/play-icon.png" alt="" /></div>
						</div>
						<div class="caption-2">
							<div class="text">
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							</div>
						</div>
					</div>
				</figure>
			</div>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</xsl:if>
	</xsl:template>
	<xsl:template match="NewsImages">
		<xsl:param name="NewsPosition"></xsl:param>
		<xsl:if test="position()>1">
			<a>
				<xsl:attribute name="data-fancybox">
					<xsl:text>gallery-</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="$NewsPosition"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="href">
					<xsl:value-of select="BriefContent"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="Title">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</xsl:attribute>

				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</a>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
