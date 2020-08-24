<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes" />

  <xsl:template match="/">
    <div class="container">
      <div class="row">
        <div class="col w-full lg:w-1/2">
          <xsl:apply-templates select="/NewsList/News[position() = 1]" mode="News-1"></xsl:apply-templates>
        </div>
        <div class="col w-full lg:w-1/2	">
          <div class="list-news">
            <xsl:apply-templates select="/NewsList/News[position() > 1 and position() &lt; 5]" mode="News-2">
            </xsl:apply-templates>
          </div>
        </div>
        <xsl:apply-templates select="/NewsList/News[position() > 4]" mode="News-3"></xsl:apply-templates>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="News" mode="News-1">
    <div class="news-wrapper">
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
  </xsl:template>

  <xsl:template match="News" mode="News-2">
    <div class="item-news">
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
  </xsl:template>

  <xsl:template match="News" mode="News-3">
    <div class="col w-full lg:w-1/3">
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
  </xsl:template>

</xsl:stylesheet>