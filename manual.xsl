<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="manual/title" />
                </title>
                <style>

                    body {
                    font-family: Arial, sans-serif;
                    line-height: 1.6;
                    margin: 20px;
                    }

                    h1 {
                    color: #333;
                    }

                    h2 {
                    color: #0066cc;
                    }

                    ul {
                    margin: 0;
                    padding: 0;
                    list-style-type: none;
                    }

                    li {
                    margin-bottom: 10px;
                    }
                    
                </style>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="manual/title" />
                </h1>

                <h2>Introduction</h2>
                <p>
                    <xsl:value-of select="manual/introduction/paragraph" />
                </p>

                <h2>Materials List</h2>
                <ul>
                    <xsl:for-each select="manual/materials/item">
                        <li>
                            <strong>
                                <xsl:value-of select="name" />
                            </strong>
        - <xsl:value-of select="quantity" />
                        </li>
                    </xsl:for-each>
                </ul>

                <h2>Usage Instructions</h2>
                <ol>
                    <xsl:for-each select="manual/instructions/step">
                        <li>
                            <xsl:value-of select="description" />
                        </li>
                    </xsl:for-each>
                </ol>

                <h2>Maintenance</h2>
                <p>
                    <xsl:value-of select="manual/maintenance/paragraph" />
                </p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>