<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="news-detail main-line">
			<div class="container">
				<div class="row">
					<div class="col w-full lg:w-2/3">
						<div class="main-news-title">
							<h1 class="title-detail">
								<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of>
								<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes">
								</xsl:value-of>
							</h1>
							<div class="date-share">
								<div class="date">
									<time>
										<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/CreatedDate">
										</xsl:value-of>
									</time>
								</div>
								<ul class="share-social">
									<li>
										<a href="#">
											<xsl:attribute name="href">
												<xsl:text disable-output-escaping="yes">
													https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
												<xsl:value-of disable-output-escaping="yes"
													select="/NewsDetail/FullUrl"></xsl:value-of>
											</xsl:attribute>
											<em class="fab fa-facebook-f"></em>
										</a>
									</li>
									<li>
										<a href="#">
											<xsl:attribute name="href">
												<xsl:text disable-output-escaping="yes">https://twitter.com/home?status=
												</xsl:text>
												<xsl:value-of disable-output-escaping="yes"
													select="/NewsDetail/FullUrl"></xsl:value-of>
											</xsl:attribute>
											<em class="fab fa-twitter"></em>
										</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="full-content">
							<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>
						</div>
					</div>
					<div class="col w-full lg:w-1/3">
						<div class="news-detail-service">

						</div>
						<div class="news-form">
						</div>
					</div>
				</div>
			</div>
			<div class="news-orther main-line">
				<div class="container">
					<h2 class="main-title line">Tin liên quan</h2>
					<div class="row">
						<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="col w-full md:w-1/2 lg:w-1/4">
			<div class="col-match-height">
				<div class="news-child">
					<div class="image">
						<a>
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
					<div class="content">
						<a class="title" href="#">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title"></xsl:value-of>
						</a>
						<p>
							<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
						</p>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>
