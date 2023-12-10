<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<pre>
Result:
+-------------------+-------------------+
|                 n |               n*n |
+-------------------+-------------------+<xsl:for-each select="objects/object">
<div class="row">| <div class="column"><xsl:value-of select="n"/></div> | <div class="column"><xsl:value-of select="nn"/></div> |</div></div>+-------------------+-------------------+
</pre>
</xsl:template>

</xsl:transform>    