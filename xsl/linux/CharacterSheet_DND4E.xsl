<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:saxon="http://saxon.sf.net/">
<xsl:output
	method = "xml"
	encoding = "iso-8859-1"
/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Fantasy Grounds 4E Character</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
        <style>
          body
          {
          font-family: Candara;
          font-size: 12pt;
   	      font-weight: bold;
          }
          td
          {
          font-size: 12pt;
          background-color: Transparent;
          vertical-align: middle;
          text-align: center;
		  }
          .box
          {
          border: solid 1px black;
          text-align: center;
		  background-color: White;
          }
          .underline
          {
          border-bottom: solid 1px black;
          }
          .blackHeading
          {
          border: solid 1px black;
          background-color: Black;
          color: White;
          font-weight: bold;
          text-align: center;
          }
          .superHeading
          {
          font-size: 8pt;
          vertical-align: top;
          }
          .subHeading
          {
          font-size: 8pt;
          vertical-align: center;
          }
          .center
          {
          text-align: center;
		  vertical-align: middle;
		  }
          .full
          {
          width: 100%;
          }
          table
          {
          empty-cells: show;
          }
          .column
          {
          width: 32%;
          vertical-align: top;
          }
          .col1
          {
          float: left;
          }
          .col2
          {
          }
          .col3
          {
          float: right;
          }
          .fixedSmall
          {
          width: 30px;
          }
          .fixedMedium
          {
          width: 50px;
          }
          .blackFill
          {
          position: relative;
          height: 25px;
          width: 90%;
          left: 5%;
          top: -39px;
          background-color: Black;
          z-index: -1;
          }
          .white
          {
          color: White;
          font-weight: bold;
          }
          .table3Columns
          {
          width: 100%;
          border: none;
          empty-cells: show;
          }
          .table3Columns tr td
          {
          width: 30%;
          vertical-align: top;
          }
          tr.black td
          {
          background-color: Black;
          vertical-align: middle;
          }
          .tiny
          {
          font-size: xx-small;
          }
		  .small
		  {
		  font-size: x-small;
		  }
          tr.gray td
          {
          background-color: #DCDCDC;
          }
          tr.transparent td
          {
          background-color: Transparent;
          }
          .powerTable
          {
          width: 98%;
          height: 305px;
          background-color: Transparent;
          }
          .powerTable TR TD
          {
          background-color: White;
          vertical-align: top;
          }
        </style>
  <!-- <link rel="StyleSheet" href="DnD4ev1-MeepoSose-Custom.css" type="text/css" />
      -->
	  </head>
      <body>
		<h2>Fantasy Grounds 4E Character Sheet 2</h2>
        <xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
        <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
		<xsl:for-each select="//character">
          <xsl:variable name="strBonus" select="abilities/strength/bonus"/>
          <xsl:variable name="conBonus" select="abilities/constitution/bonus"/>
          <xsl:variable name="dexBonus" select="abilities/dexterity/bonus"/>
          <xsl:variable name="intBonus" select="abilities/intelligence/bonus"/>
          <xsl:variable name="wisBonus" select="abilities/wisdom/bonus"/>
          <xsl:variable name="chaBonus" select="abilities/charisma/bonus"/>
          <xsl:variable name="levelBonus" select="levelbonus" />
          <table class="full">
            <tr>
              <td style="font-weight: bold;" class="underline">
                <xsl:value-of select="name"/>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
              </td>
              <td style="font-weight: bold;" class="box">
                <xsl:value-of select="level"/>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
              </td>
              <td style="font-weight: bold;" class="underline">
                <xsl:value-of select="class/base"/>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
              </td>
              <td style="font-weight: bold;" class="underline">
                <xsl:value-of select="class/paragon"/>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
              </td>
              <td style="font-weight: bold;" class="underline">
                <xsl:value-of select="class/epic"/>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
              </td>
              <td style="font-weight: bold;" class="box">
                <xsl:value-of select="exp"/>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
              </td>
            </tr>
            <tr>
              <td class="superHeading">
                Character Name
              </td>
              <td class="superHeading center">
                Level
              </td>
              <td class="superHeading">
                Class
              </td>
              <td class="superHeading">
                Paragon Path
              </td>
              <td class="superHeading">
                Epic Destiny
              </td>
              <td class="superHeading center">
                Total XP
              </td>
            </tr>
          </table>
          <table class="full" style="empty-cells: show;">
            <tr>
              <td style="font-weight: bold;" class="underline">
                <xsl:value-of select="race"/>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
              </td>
              <td style="font-weight: bold;" class="underline">
                <xsl:value-of select="size"/>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
              </td>
              <td style="font-weight: bold;" class="underline">
                <xsl:value-of select="age"/>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
              </td>
              <td style="font-weight: bold;" class="underline">
                <xsl:value-of select="gender"/>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
              </td>
              <td style="font-weight: bold;" class="underline">
                <xsl:value-of select="height"/>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
              </td>
              <td style="font-weight: bold;" class="underline">
                <xsl:value-of select="weight"/>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
              </td>
              <td style="font-weight: bold;" class="underline">
                <xsl:value-of select="alignment"/>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
              </td>
              <td style="font-weight: bold;" class="underline">
                <xsl:value-of select="deity"/>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
              </td>
              <td style="font-weight: bold;" class="underline">
                <xsl:value-of select="campaign"/>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
              </td>
            </tr>
            <tr>
              <td class="superHeading">
                Race
              </td>
              <td class="superHeading">
                Size
              </td>
              <td class="superHeading">
                Age
              </td>
              <td class="superHeading">
                Gender
              </td>
              <td class="superHeading">
                Height
              </td>
              <td class="superHeading">
                Weight
              </td>
              <td class="superHeading">
                Alignment
              </td>
              <td class="superHeading">
                Deity
              </td>
              <td class="superHeading">
                Adventuring Company or Other Affiliation
              </td>

            </tr>
          </table>

          <table class="table3Columns">
            <tr>
              <td>
                <div class="blackHeading full">INITIATIVE</div>
                <div style="position: relative; z-index: 1;">
                  <table class="full">
                    <tr>
                      <td class="subHeading fixedMedium">
                        SCORE<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                      </td>
                      <td class="subHeading">
                        <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                      </td>
                      <td class="subHeading center fixedMedium">
                        DEX<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                      </td>
                      <td class="subHeading center fixedMedium">
                        1/2 LVL<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                      </td>
                      <td class="subHeading">
                        <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                      </td>
                      <td class="subHeading center fixedMedium">
                        MISC<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                      </td>
                    </tr>
                    <tr>
                      <td class="box fixedMedium">
                        <xsl:value-of select="initiative/total"/>
                      </td>
                      <td class="white">
                        <xsl:text>Initiative</xsl:text>
                      </td>
                      <td>
                        <div class="box fixedMedium">
                        <xsl:value-of select="$dexBonus"/>
                        </div>
                      </td>
                      <td>
                        <div class="box fixedMedium">
                          <xsl:value-of disable-output-escaping="yes" select="$levelBonus"/>
                        </div>
                      </td>
                      <td>
                        <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                      </td>
                      <td class="box fixedMedium">
                        <xsl:value-of disable-output-escaping="yes" select="initiative/misc"/>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="6" class="superHeading">
                        CONDITIONAL MODIFIERS
                      </td>
                    </tr>
                  </table>
                </div>
             
                <div class="blackHeading full">ABILITY SCORES</div>
                <table class="full">
                  <tr>
                    <td class="subHeading fixedMedium">
                      Score
                    </td>
                    <td class="subHeading">
                      Ability
                    </td>
                    <td class="subHeading center fixedMedium">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td class="subHeading center fixedMedium">
                      Abil Mod
                    </td>
                    <td class="subHeading">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td class="subHeading center fixedMedium tiny">
                      Mod+1/2 lvl
                    </td>
                  </tr>
                  <tr class="black">
                    <td>
                      <div class="box fixedMedium">
                        <xsl:value-of select="abilities/strength/score"/>
                      </div>
                    </td>
                    <td class="white">
                      <xsl:text>STR</xsl:text>
                      <br />
                      <span class="small">Strength</span>
                    </td>
                    <td style="background-color: white;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td>
                      <div class="box fixedMedium">
                        <xsl:value-of disable-output-escaping="yes" select="abilities/strength/bonus"/>
                      </div>
                    </td>
                    <td style="background-color: white;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td>
                      <div class="box fixedMedium">
                        <xsl:value-of disable-output-escaping="yes" select="abilities/strength/check"/>
                      </div>
                    </td>
                  </tr>
                  <tr class="black">
                    <td>
                      <div class="box fixedMedium">
                        <xsl:value-of select="abilities/constitution/score"/>
                      </div>
                    </td>
                    <td class="white">
                      <xsl:text>CON</xsl:text>
                      <br />
                      <span class="small">Constitution</span>
                    </td>
                    <td style="background-color: white;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td>
                      <div class="box fixedMedium">
                        <xsl:value-of disable-output-escaping="yes" select="abilities/constitution/bonus"/>
                      </div>
                    </td>
                    <td style="background-color: white;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td>
                      <div class="box fixedMedium">
                        <xsl:value-of disable-output-escaping="yes" select="abilities/constitution/check"/>
                      </div>
                    </td>
                  </tr>
                  <tr class="black">
                    <td>
                      <div class="box fixedMedium">
                        <xsl:value-of select="abilities/dexterity/score"/>
                      </div>
                    </td>
                    <td class="white">
                      <xsl:text>DEX</xsl:text>
                      <br />
                      <span class="small">Dexterity</span>
                    </td>
                    <td style="background-color: white;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td>
                      <div class="box fixedMedium">
                        <xsl:value-of disable-output-escaping="yes" select="abilities/dexterity/bonus"/>
                      </div>
                    </td>
                    <td style="background-color: white;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td>
                      <div class="box fixedMedium">
                        <xsl:value-of disable-output-escaping="yes" select="abilities/dexterity/check"/>
                      </div>
                    </td>
                  </tr>
                  <tr class="black">
                    <td>
                      <div class="box fixedMedium">
                        <xsl:value-of select="abilities/intelligence/score"/>
                      </div>
                    </td>
                    <td class="white">
                      <xsl:text>INT</xsl:text>
                      <br />
                      <span class="small">Intelligence</span>
                    </td>
                    <td style="background-color: white;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td>
                      <div class="box fixedMedium">
                        <xsl:value-of disable-output-escaping="yes" select="abilities/intelligence/bonus"/>
                      </div>
                    </td>
                    <td style="background-color: white;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td>
                      <div class="box fixedMedium">
                        <xsl:value-of disable-output-escaping="yes" select="abilities/intelligence/check"/>
                      </div>
                    </td>
                  </tr>
                  <tr class="black">
                    <td>
                      <div class="box fixedMedium">
                        <xsl:value-of select="abilities/wisdom/score"/>
                      </div>
                    </td>
                    <td class="white">
                      <xsl:text>WIS</xsl:text>
                      <br />
                      <span class="small">Wisdom</span>
                    </td>
                    <td style="background-color: white;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td>
                      <div class="box fixedMedium">
                        <xsl:value-of disable-output-escaping="yes" select="abilities/wisdom/bonus"/>
                      </div>
                    </td>
                    <td style="background-color: white;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td>
                      <div class="box fixedMedium">
                        <xsl:value-of disable-output-escaping="yes" select="abilities/wisdom/check"/>
                      </div>
                    </td>
                  </tr>
                  <tr class="black">
                    <td>
                      <div class="box fixedMedium">
                        <xsl:value-of select="abilities/charisma/score"/>
                      </div>
                    </td>
                    <td class="white">
                      <xsl:text>CHA</xsl:text>
                      <br />
                      <span class="small">Charisma</span>
                    </td>
                    <td style="background-color: white;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td>
                      <div class="box fixedMedium">
                        <xsl:value-of disable-output-escaping="yes" select="abilities/charisma/bonus"/>
                      </div>
                    </td>
                    <td style="background-color: white;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td>
                      <div class="box fixedMedium">
                        <xsl:value-of disable-output-escaping="yes" select="abilities/charisma/check"/>
                      </div>
                    </td>
                  </tr>


                  <tr>

                    <td colspan="6" class="superHeading">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                  </tr>
                </table>

                <div class="blackHeading full">HIT POINTS &amp; HEALING SURGES</div>
                <table width="100%">
                  <tr>
                    <td rowspan="2">
                      <div class="subHeading">MAX HP</div>
                      <div class="box" style="display-align: center;">
                        <xsl:value-of select="hp/total"/>
                      </div>
                    </td>
                 <!--   <td></td>
                    <td colspan="2" align="right" class="subHeading">HEALING SURGES</td>
                  </tr>
                  <tr> -->
                    <td>
                      <div class="subHeading">Bloodied</div>
                      <div class="box fixedMedium">
                        <xsl:value-of select="hp/bloodied"/>
                      </div>
                    </td>
                    <td>
                      <div class="subHeading">Surge Value</div>
                      <div class="box fixedMedium">
                        <xsl:value-of select="hp/surge"/>
                      </div>
                    </td>
                    <td>
                      <div class="subHeading">Surges/day</div>
                      <div class="box fixedMedium">
                        <xsl:value-of select="hp/surgesmax"/>
                      </div>
                    </td>
                  </tr>
                </table>
                <table width="100%" cellspacing="0" cellpadding="1" style="border-collapse: collapse;">
                  <tr>
                    <td class="box small" width="70%">
                      <div style="height: 50px; text-align: left;">
                        Current hit points
                      </div>
                    </td>
                    <td class="box small">
                      <div style="height: 50px; text-align: right;">
                        Current Surge Uses
                      </div>
                    </td>
                  </tr>
                  <tr class="black">
                    <td colspan="2" class="small white box">
                      <div class="white" style="float:left;">SECOND WIND 1/ENCOUNTER</div>
                      <div class="white" style="float:right;">
                        USED <input type="checkbox"/>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="2" class="box small" style="height:40px; text-align: left;">
                      Temporary Hit Points
                    </td>
                  </tr>
                  <tr class="black">
                    <td colspan="2" class="small white box">
                      <div class="white" style="float:left;">DEATH SAVING THROW FAILURES</div>
                      <div class="white" style="float:right;">
                        <input type="checkbox"/>
                        <input type="checkbox"/>
                        <input type="checkbox"/>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="2" class="box small" style="height:40px; text-align: left;">
                      Saving Throw Mods
                    </td>
                  </tr>
                  <tr>
                    <td colspan="2" class="box small" style="height:40px; text-align: left;">
                      Resistances
                    </td>
                  </tr>
                  <tr>
                    <td colspan="2" class="box small" style="height:40px; text-align: left;">
                      Current Conditions and Effects
                    </td>
                  </tr>
                </table>
                <div class="blackHeading full">SKILLS</div>
                <table style="empty-cells: show;">
                  <tr>
                    <td class="tiny subHeading">Bonus</td>
                    <td class="tiny subHeading">Skill Name</td>
                    <td class="tiny subHeading">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td class="tiny subHeading">Abil Mod +1/2 Lvl</td>
                    <td class="tiny subHeading">Trnd (+5)</td>
                    <td class="tiny subHeading">Armor Penalty</td>
                    <td class="tiny subHeading">Misc</td>
                  </tr>
                  <xsl:for-each select="skilllist/*[starts-with(name(), 'id')]">
                    <xsl:variable name="color">
                      <xsl:choose>
                        <xsl:when test="position() mod 2 = 1">gray</xsl:when>
                        <xsl:otherwise>transparent</xsl:otherwise>
                      </xsl:choose>
                    </xsl:variable>
                    <tr class="{$color}">
                      <td class="box tiny fixedSmall">
                        <xsl:value-of select="total"/>
                      </td>
                      <td class="tiny" style="text-align: left;">
                        <xsl:value-of select="label"/>
                      </td>
                      <xsl:choose>
                        <xsl:when test="statname='strength'">
                          <td class="tiny">STR</td>
                          <td class="tiny box fixedSmall">
                            <xsl:value-of select="../../abilities/strength/check"></xsl:value-of>
                          </td>
                        </xsl:when>
                        <xsl:when test="statname='constitution'">
                          <td class="tiny">CON</td>
                          <td class="tiny box fixedSmall">
                            <xsl:value-of select="../../abilities/constitution/check"></xsl:value-of>
                          </td>
                        </xsl:when>
                        <xsl:when test="statname='dexterity'">
                          <td class="tiny">DEX</td>
                          <td class="tiny box fixedSmall">
                            <xsl:value-of select="../../abilities/dexterity/check"></xsl:value-of>
                          </td>
                        </xsl:when>
                        <xsl:when test="statname='intelligence'">
                          <td class="tiny">INT</td>
                          <td class="tiny box fixedSmall">
                            <xsl:value-of select="../../abilities/intelligence/check"></xsl:value-of>
                          </td>
                        </xsl:when>
                        <xsl:when test="statname='wisdom'">
                          <td class="tiny">WIS</td>
                          <td class="tiny box fixedSmall">
                            <xsl:value-of select="../../abilities/wisdom/check"></xsl:value-of>
                          </td>
                        </xsl:when>
                        <xsl:when test="statname='charisma'">
                          <td class="tiny">CHA</td>
                          <td class="tiny box fixedSmall">
                            <xsl:value-of select="../../abilities/charisma/check"></xsl:value-of>
                          </td>
                        </xsl:when>
                        <xsl:otherwise>
                          <td>
                            <xsl:value-of select="statname"/>
                          </td>
                          <td class="tiny box fixedSmall">
                            <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                          </td>
                        </xsl:otherwise>
                      </xsl:choose>
                      <td class="tiny box fixedSmall">
                        <xsl:value-of select="trained"/>
                      </td>
                      <td class="tiny underline fixedSmall">
                        <xsl:value-of select="armorcheckmultiplier" disable-output-escaping="yes"/>
                      </td>
                      <td class="tiny underline fixedSmall">
                        <xsl:value-of select="misc"/>
                      </td>
                    </tr>
                  </xsl:for-each>
                </table>
              </td>
              <td>
                <div class="blackHeading full">DEFENSES</div>
                <table style="empty-cells: show; width: 100%;" cellpadding="1" cellspacing="0">
                  <tr>
                    <td class="subHeading tiny">Total</td>
                    <td class="subHeading">Defense</td>
                    <td class="subHeading">Base +1/2</td>
                    <td class="subHeading">Armor/ Abil</td>
                    <td class="subHeading">Class</td>
                    <td class="subHeading">Feat</td>
                    <td class="subHeading">Enh</td>
                    <td class="subHeading">Misc</td>
                    <td class="subHeading">Misc</td>
                  </tr>
                  <xsl:for-each select="//*/defenses/node()">
                    <tr class="black">
                      <td>
                        <div class="box">
                          <xsl:value-of select="total"/>
                        </div>
                      </td>
                      <td class="white">
                        <xsl:value-of select="substring(concat(translate(name(),$lowercase,$uppercase),'    '),0,5)"/>
                      </td>
                      <td>
                        <div class="box fixedSmall">
                          <xsl:value-of select="base"/>
                        </div>
                      </td>
                      <td>
                        <div class ="box fixedSmall">
                          <xsl:value-of select="armor"/>/<xsl:value-of select="ability"/>
                        </div>
                      </td>
                      <td>
                        <div class ="box fixedSmall">
                          <xsl:value-of select="class"/>
                        </div>
                      </td>
                      <td>
                        <div class ="box fixedSmall">
                          <xsl:value-of select="feat"/>
                        </div>
                      </td>
                      <td>
                        <div class ="box fixedSmall">
                          <xsl:value-of select="temporary"/>
                        </div>
                      </td>
                      <td>
                        <div class ="box fixedSmall">
                          <xsl:value-of select="misc"/>
                        </div>
                      </td>
                      <td>
                        <div class ="box fixedSmall">
                          <xsl:value-of select="misc2"/>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="9" style="vertical-align: top; text-align: left; height:35px;" class="tiny">
                        Conditional Bonuses
                      </td>
                    </tr>
                  </xsl:for-each>
                </table>
                <div class="blackHeading full">ACTION POINTS</div>
                <br />
                <table cellspacing="0" cellpadding="1">
                  <tr class="black">
                    <td style="width:10%;">
                      <div class="box fixedSmall">
                        <xsl:value-of select="actionpoints"/>
                      </div>
                    </td>
                    <td class="white">
                      Action Points
                    </td>
                    <td class="tiny" style="width: 55%">
                      <div style="background-color: white;">
                        * gain an action point for every 2 encounters (milestone)
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="3" class="tiny" style="height: 35px; text-align: left;">
                      Additional effects for spending action points
                    </td>
                  </tr>
                </table>
                <div class="blackHeading full">RACE FEATURES</div>
                <table width="100%">
                  <xsl:for-each select="specialabilitylist/*[starts-with(name(), 'id')]">
                    <tr>
                      <td class="underline tiny" style="text-align: left;">
                        <xsl:value-of select="value"/>
                      </td>
                    </tr>
                  </xsl:for-each>
                  
                </table>
                <div class="blackHeading full">CLASS / PATH / DESTINY FEATURES</div>
                <table width="100%">
                  <xsl:for-each select="classpathdestinylist/*[starts-with(name(), 'id')]">
                    <tr>
                      <td class="underline tiny" style="text-align: left;">
                        <xsl:value-of select="value"/>
                      </td>
                    </tr>
                  </xsl:for-each>
                  <tr>
                    <td class="underline tiny">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                  </tr>
                </table>
                <div class="blackHeading full">LANGUAGES KNOWN</div>
                <table width="100%">
                  <xsl:for-each select="languagelist/*[starts-with(name(), 'id')]">
                    <tr>
                      <td class="underline tiny" style="text-align: left;">
                        <xsl:value-of select="name"/>
                      </td>
                    </tr>
                  </xsl:for-each>
                  
                </table>
                <div class="blackHeading full">EQUIPMENT</div>
                <table class="full">
                  <tr>
                    <td class="underline subHeading" width="5%" style="text-align: left; width: 5%;">
                      <b>Qty</b>
                    </td>
                    <td class="underline subHeading" style="text-align: left; width: 60%;">
                      <b>Name</b>
                    </td>
                    <td class="underline subHeading" style="text-align: left; width: 25%;">
                      <b>Location</b>
                    </td>
                    <td class="underline subHeading" style="text-align: left; width:40px;">
                      <b>Weight</b>
                    </td>
                  </tr>
                  <xsl:for-each select="inventorylist/*[starts-with(name(), 'id')]">
                    <tr>
                        <td class="underline tiny" style="text-align: left; width: 5%;">
                          <xsl:choose>
                            <xsl:when test="count>0">
                              <xsl:value-of select="count"/>
                            </xsl:when>
                            <xsl:otherwise>
                              <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                            </xsl:otherwise>
                          </xsl:choose>
                      </td>
                      <td class="underline tiny" style="text-align: left;">
						<xsl:value-of select="name"/>
						<xsl:text disable-output-escaping="yes">&#146;&amp;nbsp;</xsl:text>
                      </td>
                      <td class="underline tiny" style="text-align: left;">
                        <xsl:value-of select="location"/>
                        <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                      </td>
                      <td class="underline tiny" style="text-align: left;">
                        <xsl:value-of select="weight"/>
                        <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                      </td>
                    </tr>
                  </xsl:for-each>
                  <tr>
                    <td class="underline" style="text-align: left;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td class="underline" style="text-align: left;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td class="underline" style="text-align: left;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td class="underline" style="text-align: left;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                  </tr>
                  <tr>
                    <td class="underline" style="text-align: left;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td class="underline" style="text-align: left;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td class="underline" style="text-align: left;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td class="underline" style="text-align: left;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                  </tr>
                  <tr>
                    <td class="underline" style="text-align: left;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td class="underline" style="text-align: left;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td class="underline" style="text-align: left;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td class="underline" style="text-align: left;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                  </tr>
                  <tr>
                    <td class="underline" style="text-align: left;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td class="underline" style="text-align: left;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td class="underline" style="text-align: left;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td class="underline" style="text-align: left;">
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                  </tr>
                </table>
              </td>
              <td>
                <div class="blackHeading full">MOVEMENT</div>
                <div style="position: relative; z-index: 1;">
                  <table class="full">
                    <tr>
                      <td class="subHeading fixedMedium">
                        Score
                      </td>
                      <td class="subHeading">
                        <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                      </td>
                      <td class="subHeading center fixedMedium">
                        Base
                      </td>
                      <td class="subHeading center fixedMedium">
                        Armor
                      </td>
                      <td class="subHeading">
                        Item
                      </td>
                      <td class="subHeading center fixedMedium">
                        Misc
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <div class="box fixedMedium"><xsl:value-of select="speed/final"/>
                        </div>
                      </td>
                      <td class="white tiny">
                        <xsl:text>Speed</xsl:text>
                      </td>
                      <td>
                        <div class="box fixedSmall"><xsl:value-of disable-output-escaping="yes" select="speed/base"/>
                        </div>
                      </td>
                      <td>
                        <div class="box fixedSmall">
                          <xsl:value-of disable-output-escaping="yes" select="speed/armor"/>
                        </div>
                      </td>
                      <td>
                        <div class="box fixedSmall"><xsl:value-of select="speed/temporary"/>
                        </div>
                      </td>
                      <td>
                        <div class="box fixedSmall"><xsl:value-of disable-output-escaping="yes" select="speed/misc"/>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="6" class="superHeading" style="text-align: left;">
                        Special Movement
                      </td>
                    </tr>
                  </table>
                </div>      
                
                <div class="blackHeading full">SENSES</div>
                <div style="position: relative; z-index: 1;">
                  <table class="full">
                    <tr>
                      <td class="subHeading fixedMedium" style="width: 15%;">
                        Score
                      </td>
                      <td class="subHeading" style="text-align: left;">
                        Passive Sense
                      </td>
                      <td class="subHeading center">
                        Base
                      </td>
                      <td class="subHeading center">
                        Skill Bonus
                      </td>
                    </tr>
                    <tr>
					    <td>
                        <div class="box fixedMedium small center">
                          <xsl:value-of select="passiveinsight"/>
                        </div>
                      </td>
					  <td class="black small" style="text-align: left;">
                        <xsl:text>Pass. Insight</xsl:text>
                      </td>
                      <td class="black small">
                        <xsl:text>10 +</xsl:text>
                      </td>
                      <td class="box fixedMedium small">
                        <xsl:value-of disable-output-escaping="yes" select="skilllist/*[starts-with(name(), 'id')]/total"></xsl:value-of>
                      </td>
                    </tr>
<!--                  </table>
                </div>
            
                <div style="position: relative; z-index: 1; bottom: -15px;">
                  <table class="full"> -->
                    <tr>
                      <td>
                        <div class="box fixedMedium small center">
                          <xsl:value-of select="passiveperception"/>
                        </div>
                      </td>
                      <td class="black small" style="text-align: left;">
                        <xsl:text>Pass. Perception</xsl:text>
                      </td>
                      <td class="black small">
                        <xsl:text>10 +</xsl:text>
                      </td>
                      <td class="box fixedMedium small">
                        <xsl:value-of disable-output-escaping="yes" select="abilities/wisdom/bonus"/>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="4" class="superHeading" style="text-align: left;">
                        Special Senses
                      </td>
                    </tr>
                  </table>
                </div>
              
                <div class="blackHeading full">ATTACK WORKSPACE</div>
                <table class="full" cellspacing="0" cellpadding="1">
                <xsl:for-each select="weaponlist/*[starts-with(name(), 'id')]">
                  <xsl:variable name="abilBonus">
                    <xsl:choose>
                      <xsl:when test="attackstat='strength'">
                        <xsl:value-of select="$strBonus"/>
                      </xsl:when>
                      <xsl:when test="attackstat='dexterity'">
                        <xsl:value-of select="$dexBonus"/>
                      </xsl:when>
                      <xsl:when test="attackstat='constitution'">
                        <xsl:value-of select="$conBonus"/>
                      </xsl:when>
                      <xsl:when test="attackstat='intelligence'">
                        <xsl:value-of select="$intBonus"/>
                      </xsl:when>
                      <xsl:when test="attackstat='wisdom'">
                        <xsl:value-of select="$wisBonus"/>
                      </xsl:when>
                      <xsl:when test="attackstat='charisma'">
                        <xsl:value-of select="$chaBonus"/>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:text>0</xsl:text>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:variable>
                  <xsl:variable name="abilDamageBonus">
                    <xsl:choose>
                      <xsl:when test="damagestat='strength'">
                        <xsl:value-of select="$strBonus"/>
                      </xsl:when>
                      <xsl:when test="damagestat='dexterity'">
                        <xsl:value-of select="$dexBonus"/>
                      </xsl:when>
                      <xsl:when test="damagestat='constitution'">
                        <xsl:value-of select="$conBonus"/>
                      </xsl:when>
                      <xsl:when test="damagestat='intelligence'">
                        <xsl:value-of select="$intBonus"/>
                      </xsl:when>
                      <xsl:when test="damagestat='wisdom'">
                        <xsl:value-of select="$wisBonus"/>
                      </xsl:when>
                      <xsl:when test="damagestat='charisma'">
                        <xsl:value-of select="$chaBonus"/>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:text>0</xsl:text>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:variable>
                  <xsl:variable name="attackBonus" select="$abilBonus + bonus + $levelBonus" />
                  <xsl:variable name="damageBonus" select="$abilDamageBonus + damagebonus" />
                  <tr>
                    <td colspan="9" style="text-align: left;">
                      <b><xsl:value-of select="name"/>:</b>
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                      <xsl:value-of select="attackstat"/> +<xsl:value-of select="bonus"/> vs. <xsl:value-of select="translate(attackdef, $lowercase, $uppercase)"/><br />
                    </td>
                  </tr>
                  <tr>
                    <td class="subHeading">Att Bonus</td>
                    <td class="subHeading"></td>
                    <td class="subHeading">1/2 lvl</td>
                    <td class="subHeading">Abil</td>
                    <td class="subHeading">Prof</td>
                    <td class="subHeading">Misc</td>
                  </tr>
                  <tr class="black">
                    <td>
                      <div class="box fixedMedium">
                        <xsl:value-of select="$attackBonus"/>
                      </div>
                    </td>
                    <td>
                      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                    <td>
                      <div class="box fixedSmall">
                        <xsl:value-of select="$levelBonus"/>
                      </div>
                    </td>
                    <td>
                      <div class="box fixedSmall">
                        <xsl:value-of select="$abilBonus"/>
                      </div>
                    </td>
                    <td>
                      <div class="box fixedSmall">
                        <xsl:value-of select="bonus"/>
                      </div>
                    </td>
                    <td>
                      <div class="box fixedSmall">
                        <xsl:value-of select="attackbonus"/>
                      </div>
                    </td>
                  </tr>
                    <tr class="black">
                      <td colspan="1" style="background-color: white;"></td>
                      <td class="white" colspan="5" style="text-align:right;">
                        <div style="float: left;">
                        Damage <span class="subHeading" >
                          (+ <xsl:value-of select="damagestat"/>):
                        </span>
                        </div>
                        <div class="box" style="float:right; width: 50%; color: black;">
                          1<xsl:value-of select="damagedice"/>+<xsl:value-of select="$damageBonus"/>
                        </div>
                      </td>
                    </tr>
                </xsl:for-each>
                </table>
                <br />
                <div class="blackHeading full">FEATS</div>
                <table width="100%">
                  <xsl:for-each select="featlist/*[starts-with(name(), 'id')]">
                    <tr>
                      <td class="underline tiny" style="text-align: left;">
                        <xsl:value-of select="value"/>
                      </td>
                    </tr>
                  </xsl:for-each>
                  
                </table>
                <div class="blackHeading full">POWER INDEX</div>
                <br />
                <div class="blackHeading full">AT-WILL POWERS</div>
                <table width="100%">                  
                  <xsl:for-each select="powers/*[starts-with(name(), 'id')][recharge = 'At-Will']">
                    <tr>
                      <td class="underline tiny" style="text-align: left;">
                        <xsl:value-of select="name"/>
                      </td>
                    </tr>
                  </xsl:for-each>
				  <tr>
                    <td class="underline tiny" colspan="2" style="text-align:right;">
<!--                      <input type="checkbox"/> -->
						<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                    </td>
                  </tr>
              </table>
                <div class="blackHeading full">ENCOUNTER POWERS</div>
                <table width="100%" cellspacing="0">
                  <xsl:for-each select="powers/*[starts-with(name(), 'id')][recharge = 'Encounter']">
                    <tr>
                      <td class="underline tiny" style="text-align: left;">
                        <xsl:value-of select="name"/>
                      </td>
                      <td class="underline tiny" style="text-align:right;">
                        <input type="checkbox"/></td>
                    </tr>
                  </xsl:for-each>
                  <tr>
                    <td class="underline" colspan="2" style="text-align:right;">
                      <input type="checkbox"/>
                    </td>
                  </tr>
                </table>
                <div class="blackHeading full">DAILY POWERS</div>
                <table width="100%" cellspacing="0">
                  <xsl:for-each select="powers/*[starts-with(name(), 'id')][recharge = 'Daily']">
                    <tr>
                      <td class="underline tiny" style="text-align: left;">
                        <xsl:value-of select="name"/>
                      </td>
                      <td class="underline" style="text-align:right;">
                        <input type="checkbox"/>
                      </td>
                    </tr>
                  </xsl:for-each>
                  <tr>
                    <td class="underline" colspan="2" style="text-align:right;">
                      <input type="checkbox"/>
                    </td>
                  </tr>
                </table>

              </td>
            </tr>
          </table>
            <br style="page-break-after: always" />
          <xsl:if test="position()=10">
            <br style="page-break-after: always" />
          </xsl:if>
          <xsl:if test="position()=19">
            <br style="page-break-after: always" />
          </xsl:if>
          <xsl:for-each select="powers/*[starts-with(name(), 'id')]">
              <xsl:choose>
                <xsl:when test="recharge = 'At-Will'">
                  <xsl:call-template name="powerTemplate">
                    <xsl:with-param name="borderColor">#006400</xsl:with-param>
                    <xsl:with-param name="highlightColor">#AADDAA</xsl:with-param>
                  </xsl:call-template>                 
                </xsl:when>
                <xsl:when test="recharge='Encounter'">
                  <xsl:call-template name="powerTemplate">
                    <xsl:with-param name="borderColor">#8B0000</xsl:with-param>
                    <xsl:with-param name="highlightColor">#DDBBBB</xsl:with-param>
                  </xsl:call-template>
                </xsl:when>
                <xsl:when test="recharge='Daily'">
                  <xsl:call-template name="powerTemplate">
                    <xsl:with-param name="borderColor">#808080</xsl:with-param>
                    <xsl:with-param name="highlightColor">#D3D3D3</xsl:with-param>
                  </xsl:call-template>
                </xsl:when>
              </xsl:choose>  
          </xsl:for-each>
          <br style="page-break-after: always" />
		  
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template name="powerTemplate" match="*">
    <xsl:param name="borderColor" />
    <xsl:param name="highlightColor" />
	 
    
    <div style="border: solid 1px black; float:left; vertical-align: middle; text-align: center; padding: 1px; width: 32%; height: 325px;">
      <div style="background-color: {$borderColor}; vertical-align: bottom; width:100%; height: 100%; padding-top: 2px; padding-left: 2px; padding-right: 2px; padding-bottom: 0px;">
        <table class="powerTable" cellspacing="1">
          <colgroup>
            <col width="50%" />
              <col width="42%" />
                <col width="8%" />
          </colgroup>
          <tr>
            <td colspan="3" style="text-align: left;">
              <b><xsl:value-of select="name"/></b>
              <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
            </td>
          </tr>
          <tr>
            <td colspan="2" style="text-align: left;">
                <div class="superHeading" style="float: left;">Keywords</div>
              <div style="text-align: left;"><xsl:value-of select="keywords"/>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
              </div>
            </td>
            <td>
              <div class="superHeading">USES</div>
              <div class="subHeading">
                <xsl:value-of select="prepared"/>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
              </div>
            </td>
          </tr>
          <tr>
            <td>
              <xsl:value-of select="action"/>
              <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
            </td>
            <td colspan="2">
              <xsl:value-of select="range"/>
              <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
            </td>
          </tr>
          <tr style="height: 12px; font-weight: bold;">
            <td style="background-color: {$highlightColor};" class="superHeading">ACTION</td>
            <td style="background-color: {$highlightColor};" colspan="2" class="superHeading">RANGE</td>
          </tr>
          <tr>
            <td style="background-color: {$highlightColor}; padding: 0px;">
				<xsl:for-each select="abilities/*[type='attack'][order=1]">
					<xsl:call-template name="powerTemplateAttack" />			
				</xsl:for-each>
            </td>
            <td colspan="2">
              <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
            </td>
          </tr>
          <tr style="height: 12px; font-weight: bold;">
            <td style="background-color: {$highlightColor};">
              <div style="float:left;" class="superHeading">ATTACK</div>
              <div style="float:right;" class="superHeading">DEFENSE</div>
            </td>
            <td colspan="2" style="background-color: {$highlightColor};" class="superHeading">
              TARGET
            </td>
          </tr>
 <!--         <tr>
            <td colspan="3" class="tiny" style="text-align: left; min-height: 40px;">
              <xsl:value-of select="shortdescription"/>
              <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
			</td>
          </tr> 
  -->
		  <tr>
			<td colspan="3" class="tiny" style="text-align: left; min-height: 40px; ">
			<p>
				<xsl:value-of select="shortdescription" />
			</p>
			</td>
		  </tr>
		  <tr>
            <td colspan="3" style="text-align: left; height: 20px;" class="superHeading">
              ADDITIONAL EFFECTS FROM RACE, CLASS, FEAT, ETC.
            </td>
          </tr>
          <tr>
            <td colspan="3" style="text-align: left;">
              <div class="superHeading">Source</div>
              <span class="tiny"><xsl:value-of select="source"/>
              <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
              </span>
            </td>
          </tr>
        </table>
          <table class="full white" style="text-align:left; font-weight: bold;">
            <tr>
              <td>
                <xsl:value-of select="recharge"/>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
              </td>
              <td style="background-color: white; border: solid 1px black; width: 45%;">
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
              </td>
            </tr>
          </table>
      </div>
    </div>

  </xsl:template>
  
 <xsl:template name="powerTemplateAttack" match="*">
	  <table class="full">		  
		<tr>
		  <td style="width: 40%; background-color: White; font-size: 6pt; font-weight:bold;">
			  <xsl:variable name="atk" select="attackstat"/>
			  <xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
			  <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
			  <xsl:value-of select="attackstat" />
			  +<xsl:value-of select="attackstatmodifier"/>
			<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
		  </td>
		  <td style="background-color:Transparent; font-size: 6pt; font-weight:bold;">vs</td>
		  <td style="width: 40%; background-color: White; font-size: 6pt; font-weight:bold;">
			  <xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
			  <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
			  <xsl:value-of select="translate(attackdef, $lowercase, $uppercase)"/>
			<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
		  </td>
		</tr>
	  </table>
  </xsl:template>  
</xsl:stylesheet>