<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="news-display">
			<div class="container">
				<div class="row">
					<xsl:apply-templates select="/NewsList/News" mode='News-1'></xsl:apply-templates>
					<div class="col w-full small-news-wrapper lg:w-1/2">
						<div class="col-match-height">
							<xsl:apply-templates select="/NewsList/News" mode='News-2'></xsl:apply-templates>
						</div>
					</div>
				</div>
				<div class="row bottom-row">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode='News-1'>
		<xsl:if test="position()=1">

			<div class="col w-full lg:w-1/2">
				<div class="col-match-height">
					<div class="news-figure news-big">
						<div class="figure-image zoom-in">


							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute><img>
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								</img>
							</a>
						</div>
						<div class="figcaption">
							<div class="text">
								<a>
									<xsl:attribute name="href">
										<xsl:value-of select="Url"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="title">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>
									<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
									<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
								</a>
							</div>
							<div class="caption">
								<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
							</div>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode='News-2'>
		<xsl:if test="position() >1 and position() &lt; 5">

			<div class="row news-figure news-small">
				<div class="col w-4/12 sm:w-3/12 lg:w-4/12">
					<div class="figure-image zoom-in"><a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
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
				</div>
				<div class="col w-8/12 sm:w-9/12 lg:w-8/12">
					<div class="figcaption">
						<div class="text"><a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</a></div>
						<div class="caption">
							<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News">
		<xsl:if test="position()> 4">

			<div class="col w-full sm:w-1/2 lg:w-1/3">
				<div class="news-figure">
					<div class="figure-image opacity">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute><img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</a>
					</div>
					<div class="figcaption">
						<div class="text">
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</a>


						</div>
						<div class="caption">
							<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
