<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
   
    <xsl:template match="character">
            <html>
             <body   >
               <div style="background-image:url(http://1-background.com/images/old-paper/crumpled-rice-paper.jpg);font-family:tahoma">
                 <center>
                   <br/>
                   <table style="float: middle; border: 2px solid #B59058;border-radius:20px;font-size:35px">
                     <tr>
                       <td>
                         &#160;&#160;
                         <xsl:value-of select="name"/>&#160;
                         &#160;
                       </td>
                       <td>
                         &#160;
                         <xsl:value-of select="classes/*/name"/>&#160;
                       </td>
                     </tr>
                   </table>
                   <br/>
                   <table style="float: middle; border: 2px solid #B59058;border-radius:20px;font-size:25px">
                     <tr>
                       <td>
                         &#160;
                         Level:<xsl:value-of select="classes/*/level"/>&#160;
                         Experience:<xsl:value-of select="exp"/>&#160;
                       </td>
                     </tr>
                   </table>
                   <br/>
                   <table style="float: middle; border: 2px solid #B59058;border-radius:20px;font-size:25px">
                     <tr>
                       <td>
                         &#160;Current Hit points:<xsl:value-of select="hp/total"/>
                       </td>
                     </tr>
                   </table>
                   <br/>
                   <table style="float: middle; border: 2px solid #B59058;border-radius:20px;font-size:20px">
                     <tr>
                       <th>Age</th>
                       <th>Height</th>
                       <th>Gender</th>
                       <th>Alignment</th>
                       <th>Speed</th>
                     </tr>
                     <tr bgcolor="#C5BD8A">
                       <td>
                         <xsl:value-of select="age"/>
                       </td>
                       <td>
                         <xsl:value-of select="height"/>
                       </td>
                       <td>
                         <xsl:value-of select="gender"/>
                       </td>
                       <td>
                         <xsl:value-of select="alignment"/>
                       </td>
                       <td>
                         <xsl:value-of select="speed/total"/>
                       </td>
                     </tr>
                     <th>&#160;</th>
                   </table>
                 </center>
                 <hr size="5"></hr>
                 <div align="center">
                   <table align="center">
                     <tr>
                       <td>

                         <table style="float: left; border: 2px solid #B59058;border-radius:20px;font-size:15px">
                           <tr>
                             <th colspan="4">Abilities</th>
                           </tr>

                           <tr bgcolor="#D2D2CF">
                             <th>Ability</th>
                             <th>Value</th>
                             <th>Bonus</th>
                             <th>Modifier</th>
                           </tr>
                           <tr bgcolor="#C5BD8A">
                             <td>Charisma</td>
                             <td align="center">
                               <xsl:value-of select="abilities/charisma/score"/>
                             </td>
                             <td align="center">
                               <xsl:value-of select="abilities/charisma/bonus"/>
                             </td>
                             <td align="center">
                               <xsl:value-of select="abilities/charisma/bonusmodifier"/>
                             </td>
                           </tr>
                           <tr bgcolor="#C5BD8A">
                             <td>Strength</td>
                             <td align="center">
                               <xsl:value-of select="abilities/strength/score"/>
                             </td>
                             <td align="center">
                               <xsl:value-of select="abilities/strength/bonus"/>
                             </td>
                             <td align="center">
                               <xsl:value-of select="abilities/strength/bonusmodifier"/>
                             </td>
                           </tr>
                           <tr bgcolor="#C5BD8A">
                             <td>Intelligence</td>
                             <td align="center">
                               <xsl:value-of select="abilities/intelligence/score"/>
                             </td>
                             <td align="center">
                               <xsl:value-of select="abilities/intelligence/bonus"/>
                             </td>
                             <td align="center">
                               <xsl:value-of select="abilities/intelligence/bonusmodifier"/>
                             </td>
                           </tr>
                           <tr bgcolor="#C5BD8A">
                             <td>Dexterity</td>
                             <td align="center">
                               <xsl:value-of select="abilities/dexterity/score"/>
                             </td>
                             <td align="center">
                               <xsl:value-of select="abilities/dexterity/bonus"/>
                             </td>
                             <td align="center">
                               <xsl:value-of select="abilities/dexterity/bonusmodifier"/>
                             </td>
                           </tr>
                           <tr bgcolor="#C5BD8A">
                             <td>Wisdom</td>
                             <td align="center">
                               <xsl:value-of select="abilities/wisdom/score"/>
                             </td>
                             <td align="center">
                               <xsl:value-of select="abilities/wisdom/bonus"/>
                             </td>
                             <td align="center">
                               <xsl:value-of select="abilities/wisdom/bonusmodifier"/>
                             </td>
                           </tr>
                           <tr bgcolor="#C5BD8A">
                             <td>Constitution</td>
                             <td align="center">
                               <xsl:value-of select="abilities/constitution/score"/>
                             </td>
                             <td align="center">
                               <xsl:value-of select="abilities/constitution/bonus"/>
                             </td>
                             <td align="center">
                               <xsl:value-of select="abilities/constitution/bonusmodifier"/>
                             </td>
                           </tr>
                           <th>&#160;</th>

                         </table>
                       </td>
                       <td>
                         <table style="float: left; border: 2px solid #B59058;border-radius:20px;font-size:15px">
                           <tr>
                             <th colspan="2">Armour Class</th>
                             <th>&#160;&#160;&#160;</th>
                             <th colspan="2">Attack Bonuses</th>
                           </tr>
                           <tr bgcolor="#D2D2CF">
                             <th>Type</th>
                             <th>Value</th>
                             <th>   </th>
                             <th>Type</th>
                             <th>Value</th>
                           </tr>
                           <tr bgcolor="#C5BD8A">
                             <td>C.M.D.</td>
                             <td  align="center">
                               <xsl:value-of select="ac/totals/cmd"/>
                             </td>
                             <td></td>
                             <td>Melee</td>
                             <td  align="center">
                               <xsl:value-of select="attackbonus/melee/total"/>
                             </td>
                           </tr>
                           <tr bgcolor="#C5BD8A">
                             <td>Flatfooted</td>
                             <td  align="center">
                               <xsl:value-of select="ac/totals/flatfooted"/>
                             </td>
                             <td></td>
                             <td>Ranged</td>
                             <td  align="center">
                               <xsl:value-of select="attackbonus/ranged/total"/>
                             </td>
                           </tr>
                           <tr bgcolor="#C5BD8A">
                             <td>General</td>
                             <td  align="center">
                               <xsl:value-of select="ac/totals/general"/>
                             </td>
                             <td></td>
                             <td>Grapple</td>
                             <td width="75" align="center">
                               <xsl:value-of select="attackbonus/grapple/total"/>
                             </td>
                           </tr>
                           <tr bgcolor="#C5BD8A">
                             <td>Touch</td>
                             <td  align="center">
                               <xsl:value-of select="ac/totals/touch"/>
                             </td>
                             <td></td>
                             <td></td>
                             <td></td>
                           </tr>
                           <tr bgcolor="#C5BD8A">
                             <td>&#160;</td>
                             <td>&#160;</td>
                             <td>&#160;</td>
                             <td>&#160;</td>
                             <td>&#160;</td>
                           </tr>
                           <tr bgcolor="#C5BD8A">
                             <td>&#160;</td>
                             <td>&#160;</td>
                             <td>&#160;</td>
                             <td>&#160;</td>
                             <td>&#160;</td>
                           </tr>
                           <th>&#160;</th>
                         </table>
                       </td>
                     </tr>
                   </table>
                 </div>
                 <div style="clear:both;height:1px;"> </div>
                 <div align="center">
                   <table align="center">
                     <tr>
                       <td>
                         <table style="float: left; border: 2px solid #B59058;border-radius:20px;font-size:15px">
                           <tr  >
                             <th colspan="3">Saves</th>
                           </tr>
                           <tr  bgcolor = "#D2D2CF" >
                             <th>Reflex</th>
                             <th>Will</th>
                             <th>Fortitude</th>
                           </tr>
                           <tr bgcolor="#C5BD8A">
                             <td width="50" align="center">
                               <xsl:value-of select="saves/reflex/total"/>
                             </td>
                             <td width="50" align="center">
                               <xsl:value-of select="saves/will/total"/>
                             </td>
                             <td width="50" align="center">
                               <xsl:value-of select="saves/fortitude/total"/>
                             </td>
                           </tr>
                           <tr bgcolor = "#D2D2CF">
                             <th colspan="3">Wealth</th>
                           </tr>
                           <xsl:for-each select="coins/*">
                             <xsl:if test="name() != 'slot5' and name() != 'slot6'">
                               <tr bgcolor="#C5BD8A">
                                 <td colspan="2" width="100">
                                   <xsl:value-of select="name"/>
                                 </td>
                                 <xsl:choose>
                                   <xsl:when test="amount &gt; 0">
                                     <td width="100" align="right">
                                       <xsl:value-of select="amount"/>
                                     </td>
                                   </xsl:when>
                                   <xsl:otherwise>
                                     <td width="100" align="right">
                                       <xsl:value-of select="amount"/>
                                     </td>
                                   </xsl:otherwise>
                                 </xsl:choose>

                               </tr>

                             </xsl:if>
                           </xsl:for-each>
                           <th>&#160;</th>
                         </table>
                       </td>
                       <td>
                         <table style="float: left; border: 2px solid #B59058;border-radius:20px;font-size:15px">
                           <tr>
                             <th colspan="2">Languages</th>
                           </tr>
                           <xsl:for-each select="languagelist/*">
                             <xsl:if test="position() &lt; 7">
                               <tr  bgcolor="#C5BD8A" align="center">
                                 <td colspan="2" width="125">
                                   <xsl:value-of select="name"/>
                                 </td>
                               </tr>
                             </xsl:if>
                           </xsl:for-each>
                           <xsl:if test="count(languagelist/*) &lt; 7">
                             <tr  bgcolor="#C5BD8A" align="center">
                               <td colspan="2" width="125">&#160;</td>
                             </tr>
                           </xsl:if>
                           <xsl:if test="count(languagelist/*) &lt; 6">
                             <tr  bgcolor="#C5BD8A" align="center">
                               <td colspan="2" width="125">&#160;</td>
                             </tr>
                           </xsl:if>
                           <xsl:if test="count(languagelist/*) &lt; 5">
                             <tr  bgcolor="#C5BD8A" align="center">
                               <td colspan="2" width="125">&#160;</td>
                             </tr>
                           </xsl:if>
                           <th>&#160;</th>
                         </table>
                       </td>
                       <td>
                         <table style="float: left; border: 2px solid #B59058;border-radius:20px;font-size:15px">
                           <tr >
                             <th colspan="2">Encumbrance</th>
                           </tr>
                           <xsl:for-each select="encumbrance/*">
                             <xsl:if test="contains(name(.), 'load') or contains(name(.), 'armor')">
                               <tr  bgcolor="#C5BD8A">
                                 <td width="100">
                                   <xsl:value-of select="name(.)"/>
                                 </td>
                                 <td width="100" align="right">
                                   <xsl:value-of select="."/>
                                 </td>
                               </tr>
                             </xsl:if>
                           </xsl:for-each>
                           <th>&#160;</th>
                         </table>
                       </td>
                     </tr>
                   </table>
                 </div>
                 <div align="center">
                 <table align="center">
                   <tr>
                     <td>
                       <table style="float: left; border: 2px solid #B59058;border-radius:20px;font-size:15px">
                         <tr>
                           <th colspan="7">Weapons/Attacks</th>
                         </tr>
                         <tr bgcolor = "#D2D2CF">
                           <th>Weapon</th>
                           <th>Attack</th>
                           <th>Damage</th>
                           <th>Type</th>
                           <th>Range</th>
                           <th>Crit Threat</th>
                           <th>Crit Mult</th>
                         </tr>
                         <xsl:for-each select="weaponlist/*">
                           <tr bgcolor = "#C5BD8A">
                             <td width="250">
                               <xsl:value-of select="name"/>
                             </td>
                             <td width="100" align="center">
                               <xsl:if test="attack1 &gt; 0">+</xsl:if>
                               <xsl:value-of select="attack1"/>
                             </td>
                             <td width="100" align="center">
                               <xsl:value-of select="damagelist/id-00001/statmult"/>
                               <xsl:value-of select="damagelist/id-00001/dice"/>
                               <xsl:if test="amount &gt; 0">
                                 <xsl:value-of select="damagelist/id-00001/bonus"/>
                               </xsl:if>
                             </td>
                             <td width="200" align="center">
                               <xsl:value-of select="damagelist/id-00001/type"/>
                             </td>
                             <td width="100" align="center">
                               <xsl:value-of select="rangeincrement"/>
                             </td>
                             <td width="150" align="center">
                               <xsl:value-of select="critatkrange"/>
                               <xsl:if test="critatkrange &lt; 20">-20</xsl:if>
                             </td>
                             <td width="50"  align="center">
                               <xsl:value-of select="damagelist/id-00001/critmult"/>
                             </td>
                           </tr>
                         </xsl:for-each>
                         <th>&#160;</th>
                       </table>
                     </td>
                   </tr>
                 </table>
                 </div>
                 <hr size="5"></hr>
                 <div align="center">
                   <div style="page-break-before: always">&#160;</div>
                   <table align="center">
                     <tr>
                       <td>
                         <table align="left" style="float: left; border: 2px solid #B59058;border-radius:20px;font-size:15px" >
                           <tr >
                             <th colspan="2">Feats</th>
                           </tr>
                           <xsl:for-each select="featlist/*">
                             <tr bgcolor = "#C5BD8A">
                               <td width="250">
                                 <xsl:value-of select="value"/>
                               </td>
                               <td width="500" align="left">
                                 <xsl:value-of select="description"/>
                               </td>
                             </tr>
                           </xsl:for-each>
                           <th>&#160;</th>
                         </table>
                       </td>
                     </tr>
                   </table>
                 </div>
                 <div style="clear:both;height:1px;"> </div>
                 <div align="center">
                 <table align="center">
                   <tr>
                     <td>
                       <table align="left" style="float: left; border: 2px solid #B59058;border-radius:20px;font-size:15px" >
                         <tr >
                           <th colspan="2">Special Abilities</th>
                         </tr>
                         <xsl:for-each select="specialabilitylist/*">
                           <tr bgcolor = "#C5BD8A" >
                             <td width="250" align="left">
                               <xsl:value-of select="value"/>
                             </td>
                             <td width="700">
                               <xsl:value-of select="substring-before(description, '.')"/>.
                             </td>
                             <th>&#160;</th>
                           </tr>
                         </xsl:for-each>
                         <th>&#160;</th>
                       </table>
                     </td>
                   </tr>
                 </table>
                 </div>
                 <hr size="5"></hr>
                 <div style="page-break-before: always">&#160;</div>
                 <div style="clear:both;height:1px;"> </div>
                 <div align="center">
                 <table align="center">
                   <tr>
                     <td>
                       <table align="left" style="float: left; border: 2px solid #B59058;border-radius:20px;font-size:15px" >
                         <tr >
                           <th colspan="3">Skills</th>
                         </tr>
                         <xsl:for-each select="skilllist/*">
                           <tr bgcolor = "#C5BD8A">
                             <td width="450">
                               <xsl:value-of select="label"/>&#160;<xsl:value-of select="sublabel"/>
                             </td>
                             <td width="400">
                               <xsl:value-of select="statname"/>
                             </td>
                             <td width="100" align="right">
                               <xsl:value-of select="total"/>
                             </td>
                           </tr>
                         </xsl:for-each>
                         <th>&#160;</th>
                       </table>
                     </td>
                   </tr>
                 </table>
                 <hr size="5"></hr>
                 <div style="page-break-before: always">&#160;</div>
                 <div style="clear:both;height:1px;"> </div>
                 </div>
                 <div align="center">
                 <table align="center">
                   <tr>
                     <td>
                 <table align="left" style="float: left; border: 2px solid #B59058;border-radius:20px;font-size:15px">
                   <tr>
                     <th colspan="5">Equipment</th>
                   </tr>
                   <tr >
                     <th >Item</th>
                     <th >Count</th>
                     <th >Weight</th>
                     <th >Cost</th>
                     <th >Location</th>
                   </tr>
                   <xsl:for-each select="inventorylist/*">
                     <tr bgcolor = "#C5BD8A">
                       <td width="400">
                         <xsl:value-of select="name"/>
                       </td>
                       <td width="100" align="right">
                         <xsl:value-of select="count"/>
                       </td>
                       <td width="100" align="right">
                         <xsl:value-of select="weight"/> lbs
                       </td>
                       <td width="138" align="right">
                         <xsl:value-of select="cost"/>
                       </td>
                       <td width="200" align="center">
                         <xsl:value-of select="location"/>
                       </td>
                     </tr>
                   </xsl:for-each>
                   <th>&#160;</th>
                 </table>
                     </td>
                   </tr>
                 </table>
                 </div>
                 <hr size="5"></hr>
                 <div style="page-break-before: always"></div>
                 <div style="clear:both;height:1px;">&#160;</div>
                 <div align="center">
                   <table align="center">
                     <tr>
                       <td>
                         <table  align="left" style="float: left; border: 2px solid #B59058;border-radius:20px;font-size:15px">
                           <tr>
                             <th colspan="11">Spells Available</th>
                           </tr>
                           <tr bgcolor = "#D2D2CF">
                             <th>Level</th>
                             <th>0</th>
                             <th>1</th>
                             <th>2</th>
                             <th>3</th>
                             <th>4</th>
                             <th>5</th>
                             <th>6</th>
                             <th>7</th>
                             <th>8</th>
                             <th>9</th>
                           </tr>
                           <tr bgcolor = "#C5BD8A">
                             <td width="264"></td>
                             <td width="65" align="center">
                               <xsl:value-of select="spellset/*/availablelevel0"/>
                             </td>
                             <td width="65" align="center">
                               <xsl:value-of select="spellset/*/availablelevel1"/>
                             </td>
                             <td width="65" align="center">
                               <xsl:value-of select="spellset/*/availablelevel2"/>
                             </td>
                             <td width="65" align="center">
                               <xsl:value-of select="spellset/*/availablelevel3"/>
                             </td>
                             <td width="65" align="center">
                               <xsl:value-of select="spellset/*/availablelevel4"/>
                             </td>
                             <td width="65" align="center">
                               <xsl:value-of select="spellset/*/availablelevel5"/>
                             </td>
                             <td width="65" align="center">
                               <xsl:value-of select="spellset/*/availablelevel6"/>
                             </td>
                             <td width="65" align="center">
                               <xsl:value-of select="spellset/*/availablelevel7"/>
                             </td>
                             <td width="65" align="center">
                               <xsl:value-of select="spellset/*/availablelevel8"/>
                             </td>
                             <td width="65" align="center">
                               <xsl:value-of select="spellset/*/availablelevel9"/>
                             </td>

                           </tr>
                           <th>&#160;</th>
                         </table>
                       </td>
                     </tr>
                   </table>
                 </div>
                 <div style="page-break-before: always"></div>
                 <div style="clear:both;height:1px;">&#160;</div>
                 <div align="center">
                 <table align="center">
                   <tr>
                     <td>
                       <xsl:for-each select="spellset/*/levels/*">
                         <xsl:if test="spells/*">
                           <table  style="border: 2px solid #B59058;border-radius:20px;font-size:15px">
                             <tr>
                               <th colspan="04" >Spells</th>
                             </tr>
                             <tr bgcolor = "#D2D2CF">
                               <th colspan="04" width="100">
                                 Level <xsl:value-of select="level"/>
                               </th>
                             </tr>

                             <xsl:for-each select="spells/*">
                               <xsl:if test="prepared='1'">
                                 <tr bgcolor = "#C5BD8A">
                                   <td width="200">
                                     <xsl:value-of select="name"/>
                                   </td>
                                   <td width="300">
                                     <xsl:value-of select="shortdescription"/>
                                   </td>
                                   <td width="500">
                                     <xsl:value-of select="effect"/>
                                   </td>
                                   <td width="150">
                                     <xsl:value-of select="castingtime"/>
                                   </td>
                                 </tr>
                               </xsl:if>
                             </xsl:for-each>
                             <th>&#160;</th>
                           </table>
                         </xsl:if>


                       </xsl:for-each>

                     </td>
                   </tr>
                 </table>
                 </div>
               </div>
          
             </body>
           </html>
    </xsl:template>
</xsl:stylesheet>
