<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <style>
            h3 {
                font-size: 14px;
                font-weight: bold;
                color: rgb(51, 173, 255);
                display: inline-block;

            }
            h4 {
                text-align: right;
                color: rgb(128, 0, 0);
                display: inline-block;
            }

            h5 {
                margin-top: 0px;
                font-size: 14px;
            }
            p.desc {
                color: gray;
                background-color: white;
                font-style: italic;
                border-color: black;
                border-style: dotted;
                padding: 0.5em;
            }

            li {
                font-weight: bold;
            }

            div {
                display: flex;
                justify-content: space-between;
            }
        </style>
        <body>
            <h1>Inventory</h1>
            <h2>Books</h2>
            <xsl:for-each select = "inventory/books">
                <xsl:for-each select = "book">
                    <div>
                        <h3><xsl:value-of select = "name"/></h3>
                        <h4><xsl:value-of select = "year"/></h4>
                    </div>
                    <h5><xsl:value-of select = "author"/></h5>
                    <p class="desc"><xsl:value-of select = "summary"/></p>
                        <xsl:for-each select = "characters">
                            <xsl:for-each select = "character">
                                <ul>
                                    <li><xsl:value-of select = "name"/></li>
                                    <p><xsl:value-of select = "desc"/></p>
                                </ul>
                            </xsl:for-each>
                        </xsl:for-each>
                        <br />
                </xsl:for-each>
            </xsl:for-each>
            <h2>TV Shows</h2>
            <xsl:for-each select = "inventory/tvshows">
                <xsl:for-each select = "show">
                    <div>
                        <h3><xsl:value-of select = "name"/></h3>
                        <h4><xsl:value-of select = "year"/></h4>
                    </div>
                    <h5><xsl:value-of select = "creator"/></h5>
                    <p class="desc"><xsl:value-of select = "premise"/></p>
                        <xsl:for-each select = "characters">
                            <xsl:for-each select = "character">
                                <ul>
                                    <li><xsl:value-of select = "name"/></li>
                                    <p><xsl:value-of select = "desc"/></p>
                                </ul>
                            </xsl:for-each>
                        </xsl:for-each>
                        <br />
                </xsl:for-each>
            </xsl:for-each>
            <h2>Albums</h2>
            <xsl:for-each select = "inventory/albums">
                <xsl:for-each select = "album">
                    <div>
                        <h3><xsl:value-of select = "name"/></h3>
                        <h4><xsl:value-of select = "year"/></h4>
                    </div>
                    <h5><xsl:value-of select = "performer"/></h5>
                    <p class="desc"><xsl:value-of select = "desc"/></p>
                        <xsl:for-each select = "songs">
                            <xsl:for-each select = "song">
                                <ul>
                                    <li><xsl:value-of select = "name"/></li>
                                    <p><xsl:value-of select = "desc"/></p>
                                </ul>
                            </xsl:for-each>
                        </xsl:for-each>
                        <br />
                </xsl:for-each>
            </xsl:for-each>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
