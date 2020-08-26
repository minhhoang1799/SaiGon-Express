<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="personnel-detail main-line">
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
						<div class="table">
							<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/NewsAttributes">
							</xsl:value-of>
						</div>
						<div class="full-content">
							<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent">
							</xsl:value-of>
						</div>
					</div>
					<div class="col w-full lg:w-1/3">
						<h2 class="main-title line">Vị trí khác</h2>
						<ul class="list-news-service">
							<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
						</ul>
					</div>
				</div>
				<div class="apply-form">
					<div class="btn button-apply"><a class="btn btn-primary " href="#"> <span>Ứng tuyển</span></a></div>
					<div class="btn button-download"><a class="btn btn-primary " href="#"> <span> Tải fomr ứng
								tuyển</span></a></div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsAttributes">
		<tr>
			<td class='text-left'>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
			</td>
		</tr>

	</xsl:template>
	<xsl:template match="NewsOther">
		<li>
			<div class="date">
				<time>
					<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
				</time>
			</div>
			<a class="title" href="#">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

</xsl:stylesheet>
