<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <form class="charsheet">
            <header>
                <section class="charname">
                    <label for="charname">Character Name</label>
                    <input name="charname">
                        <xsl:attribute name="value">
                            <xsl:value-of select="character/name"/>
                        </xsl:attribute>
                    </input>
                </section>
                <section class="misc">
                    <ul>
                        <li>
                            <label for="classlevel">Class and Level</label>
                            <input name="classlevel">
                                <xsl:attribute name="value">
                                    <xsl:value-of select="concat(character/class/@name, ' ', character/class/@level)"/>
                                </xsl:attribute>
                            </input>
                        </li>
                        <li>
                            <label for="background">Background</label>
                            <input name="background">
                                <xsl:attribute name="value">
                                    <xsl:value-of select="character/background"/>
                                </xsl:attribute>
                            </input>
                        </li>
                        <li>
                            <label for="race">Race</label>
                            <input name="race">
                                <xsl:attribute name="value">
                                    <xsl:value-of select="character/race"/>
                                </xsl:attribute>
                            </input>
                        </li>
                        <li>
                            <label for="alignment">Alignment</label>
                            <input name="alignment">
                                <xsl:attribute name="value">
                                    <xsl:value-of select="character/alignment"/>
                                </xsl:attribute>
                            </input>
                        </li>
                        <li>
                            <label for="experiencepoints">Experience Points</label>
                            <input name="experiencepoints">
                                <xsl:attribute name="value">
                                    <xsl:value-of select="character/experience"/>
                                </xsl:attribute>
                            </input>
                        </li>
                    </ul>
                </section>
            </header>
            <!-- Add the rest of the sections here following the same pattern -->
        </form>
    </xsl:template>
</xsl:stylesheet>

