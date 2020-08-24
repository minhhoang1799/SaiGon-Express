<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<nav class="sub-nav">
			<div class="container">
				<ul class="nav-child bg-white flex justify-between">
					<xsl:apply-templates select="/ZoneList/Zone" mode="Nav"></xsl:apply-templates>
				</ul>
			</div>
		</nav>

		<section class="about-wrapper">
			<xsl:apply-templates select="/ZoneList/Zone" mode="Content"></xsl:apply-templates>
		</section>
	</xsl:template>

	<xsl:template match="Zone" mode="Nav">
		<li>
			<a>
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

	<xsl:template match="Zone" mode="Content">
		<xsl:if test="position() = 1">
			<div class="tong-quan main-line">
				<div class="container">
					<h2 class="main-title text-center">
						<xsl:value-of disable-output-escaping="yes" select="News/Title"></xsl:value-of>
						<xsl:value-of select="News/EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h2>
					<div class="row pt-20">
						<div class="col w-full lg:w-1/2">
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
						</div>
						<div class="col w-full lg:w-1/2">
							<div class="content  overflow-y-scroll">
								<xsl:value-of disable-output-escaping="yes" select="News/FullContent"></xsl:value-of>
							</div>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>

		<xsl:if test="position() = 2">
			<div class="giai-phap main-line">
				<div class="container">
					<h2 class="main-title text-center">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</h2>
					<div class="main-slide">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="News" mode="ZoneNews-2"></xsl:apply-templates>
							</div>
						</div>
						<div class="swiper-prev"><em class="mdi mdi-arrow-left"></em></div>
						<div class="swiper-next"><em class="mdi mdi-arrow-right"></em></div>
					</div>
				</div>
			</div>
		</xsl:if>

		<xsl:if test="position() = 3">
			<div class="tam-nhin main-line">
				<div class="container">
					<div class="row">
						<div class="col w-full lg:w-1/2">
							<h2 class="main-title text-left">
								<xsl:value-of select="News/Title" disable-output-escaping="yes"></xsl:value-of>
								<xsl:value-of select="News/EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h2>
							<div class="content  overflow-y-scroll">
								<h3 class="decs">
									<xsl:value-of select="News/BriefContent" disable-output-escaping="yes">
									</xsl:value-of>
								</h3>
								<xsl:value-of select="News/FullContent" disable-output-escaping="yes"></xsl:value-of>
							</div>
						</div>
						<div class="col w-full lg:w-1/2">
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
						</div>
					</div>
				</div>
			</div>
		</xsl:if>

		<xsl:if test="position() = 4">
			<div class="su-menh">
				<div class="icon flex justify-center">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="News/ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="News/Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<h2 class="main-title text-center">
					<xsl:value-of select="News/Title" disable-output-escaping="yes"></xsl:value-of>
					<xsl:value-of select="News/EditLink" disable-output-escaping="yes"></xsl:value-of>
				</h2>
				<div class="container">
					<div class="content text-center">
						<xsl:value-of select="News/BriefContent" disable-output-escaping="yes">
						</xsl:value-of>
					</div>
				</div>
			</div>
		</xsl:if>

		<xsl:if test="position() = 5">
			<div class="gia-tri main-line">
				<div class="icon flex justify-center">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<h2 class="main-title text-center">
					<xsl:value-of select="Title"></xsl:value-of>
				</h2>
				<div class="container">
					<div class="row">
						<xsl:apply-templates select="News[position() &lt; 6]" mode="ZoneNews-5"></xsl:apply-templates>
					</div>
					<xsl:apply-templates select="News[6]" mode="ZoneNews-5-Last"></xsl:apply-templates>
				</div>
			</div>
		</xsl:if>

		<xsl:if test="position() = 6">
			<div class="doi-tac main-line">
				<div class="container">
					<h2 class="main-title text-left">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</h2>
					<p class="text">
						<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
					</p>
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="News" mode="ZoneNews-6"></xsl:apply-templates>
						</div>
					</div>
					<div class="button-slide">
						<div class="swiper-prev"><em class="mdi mdi-arrow-left"></em></div>
						<div class="swiper-next"><em class="mdi mdi-arrow-right"></em></div>
					</div>
				</div>
			</div>
		</xsl:if>

	</xsl:template>

	<xsl:template match="News" mode="ZoneNews-2">
		<div class="swiper-slide">
			<div class="item-wrapper">
				<div class="image-transport">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<div class="content-wrapper">
					<div class="icon">
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<h3 class="title">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h3>
					<a class="button" href="#">
						<xsl:attribute name="data-fancybox">
							<xsl:text disable-output-escaping="yes">about-popup</xsl:text>
							<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="data-src">
							<xsl:text disable-output-escaping="yes">#about-modal-</xsl:text>
							<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
						</xsl:attribute>
						<xsl:text disable-output-escaping="yes">Xem chi tiết</xsl:text>
					</a>
				</div>
			</div>
			<div class="giaiphap-popup" style="display: none">
				<xsl:attribute name="id">
					<xsl:text disable-output-escaping="yes">about-modal-</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
				</xsl:attribute>
				<div class="container">
					<div class="row">
						<div class="col w-full lg:w-1/2">
							<div class="img-popup">
								<img>
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								</img>
							</div>
						</div>
						<div class="col w-full lg:w-1/2">
							<h3 class="title">
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h3>
							<div class="decs">
								<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews-5">
		<div>
			<xsl:if test="position() &lt; 3">
				<xsl:attribute name="class">
					<xsl:text>col w-full lg:w-1/2</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="position() > 2 ">
				<xsl:attribute name="class">
					<xsl:text>col w-full lg:w-1/3 child</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<div class="item-child">
				<div class="image">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<h3 class="title text-center">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</h3>
				<div class="content">
					<p>
						<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					</p>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews-5-Last">
		<div class="row doanh-nghiep main-line">
			<div class="col w-full lg:w-1/2">
				<div class="image">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
			</div>
			<div class="col w-full lg:w-1/2 ">
				<h2 class="main-title">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</h2>
				<div class="content">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews-6">
		<div class="swiper-slide">
			<div class="image">
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>