<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	
    <xsl:template match="character">
		<html>
			<body   >
				
				<xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
				<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
				<xsl:variable name="strBonus" select="abilities/strength/bonus" />
				<xsl:variable name="dexBonus" select="abilities/dexterity/bonus" />
				<xsl:variable name="conBonus" select="abilities/constitution/bonus" />
				<xsl:variable name="intBonus" select="abilities/intelligence/bonus" />
				<xsl:variable name="wisBonus" select="abilities/wisdom/bonus" />
				<xsl:variable name="chaBonus" select="abilities/charisma/bonus" />
				<xsl:variable name="statBonus" select="22" />
				
				
				<div style="background-image:url(http://1-background.com/images/old-paper/really-old-manuscript-paper.jpg);font-family:tahoma">
					<center>
						
						<br/>
						<table rules = "all" style="float: middle; border: 2px solid #B59058;border-radius:10px;vertical-align:top;font-size:22px">
							<tr bgcolor="#FFFFE6" >
								<td border="2px solid #B59058" style = "padding-left:10px;padding-right:30px; vertical-align:top">
									<p style="font-size:10px; margin-bottom:0em; margin-top:0em" >Name:</p> 
									<p style="font-size:30px; margin-bottom:0em; margin-top:0em" ><xsl:value-of select="name"/></p>
								</td>
								
								<td style = "padding-left:10px;padding-right:40px; vertical-align:top">
									<p style="font-size:10px; margin-bottom:0em; margin-top:0em" >Ancestry and Heritage:</p> <xsl:value-of select="race" />      
									
									<p style="font-size:12px; margin-bottom:0em; margin-top:0em" ><xsl:value-of select="traitlist/*[starts-with(name,'Heritage')]/name"/></p>
								</td>
								<td style = "padding-left:10px;padding-right:40px; vertical-align:top">
									<p style="font-size:10px; margin-bottom:0em; margin-top:0em" >Background:</p> <xsl:value-of select="background" />      
									
									
								</td>
								<td style = "padding-left:10px;padding-right:40px; vertical-align:top">
									<p style="font-size:10px; margin-bottom:0em; margin-top:0em" >Class:</p> 
									<xsl:value-of select="classes/*/name"/>
									<p style="font-size:12px; margin-bottom:0em; margin-top:0em" >Level: <xsl:value-of select="classes/*/level"/></p>
								</td>
								
								<td>
									<img src="https://www.fantasygrounds.com/images/PathfinderRoleplayingGame.png" alt="Pathfinder Icon" width = "235" height="50" />
								</td>
							</tr>
						</table>
						<!--  ................................STATS.................................................................................... -->				   
						
					</center>
					
					<div align="center">
						<table align="center">
							<tr>
								<td style = "padding-left:10px; vertical-align:top">
									
									<table rules = "all" style="float: middle; border: 2px solid #B59058;border-radius:10px;vertical-align:top;font-size:24px">
										<tr bgcolor="#FFFFE6">
											<th colspan="3">Abilities</th>
										</tr>
										
										<tr bgcolor="#FFFFE6">
											<th style = "padding-left:10px;padding-right:20px; vertical-align:top; font-size: 14px">Ability</th>
											<th style = "padding-left:10px;padding-right:20px; vertical-align:top; font-size: 14px">Value</th>
											<th style = "padding-left:10px;padding-right:20px; vertical-align:top; font-size: 14px">Bonus</th>
											
										</tr>
										<tr bgcolor="#FFFFE6">
											<td style="padding-left:10px;font-size:20px; margin-bottom:0em; margin-top:0em" >STR</td>
											<td align="center">
												<xsl:value-of select="abilities/strength/score"/>
											</td>
											<td align="center">
												<xsl:value-of select='format-number(abilities/strength/bonus,"+0;-0")'/>
											</td>
											
										</tr>
										<tr bgcolor="#FFFFE6">
											<td style="padding-left:10px;font-size:20px; margin-bottom:0em; margin-top:0em">DEX</td>
											<td align="center">
												<xsl:value-of select="abilities/dexterity/score"/>
											</td>
											<td align="center">
												<xsl:value-of select='format-number(abilities/dexterity/bonus,"+0;-0")'/>
											</td>
											
										</tr>
										<tr bgcolor="#FFFFE6">
											<td style="padding-left:10px;font-size:20px; margin-bottom:0em; margin-top:0em">CON</td>
											<td align="center">
												<xsl:value-of select="abilities/constitution/score"/>
											</td>
											<td align="center">
												<xsl:value-of select='format-number(abilities/constitution/bonus,"+0;-0")'/>
											</td>
											
										</tr>
										
										
										<tr bgcolor="#FFFFE6">
											<td style="padding-left:10px;font-size:20px; margin-bottom:0em; margin-top:0em">INT</td>
											<td align="center">
												<xsl:value-of select="abilities/intelligence/score"/>
											</td>
											<td align="center">
												<xsl:value-of select='format-number(abilities/intelligence/bonus,"+0;-0")'/>
											</td>
											
										</tr>
										
										<tr bgcolor="#FFFFE6">
											<td style="padding-left:10px;font-size:20px; margin-bottom:0em; margin-top:0em">WIS</td>
											<td align="center">
												<xsl:value-of select="abilities/wisdom/score"/>
											</td>
											<td align="center">
												<xsl:value-of select='format-number(abilities/wisdom/bonus,"+0;-0")'/>
											</td>
											
										</tr>
										<tr bgcolor="#FFFFE6">
											<td style="padding-left:10px;font-size:20px; margin-bottom:0em; margin-top:0em">CHA</td>
											<td align="center">
												<xsl:value-of select="abilities/charisma/score"/>
											</td>
											<td align="center">
												<xsl:value-of select='format-number(abilities/charisma/bonus,"+0;-0")'/>
											</td>
											
										</tr>
									</table>
								</td>
								<!--  ................................AC / Saves / Speed.................................................................................... -->	               
								<td>
									
									<table  rules = "all" style="float: middle; border: 2px solid #B59058;border-radius:10px;vertical-align:top;font-size:20px">
										<tr bgcolor="#FFFFE6">
											<th colspan="3">Armour Class</th>
											
										</tr>
										
										
										<tr bgcolor="#FFFFE6">
											
											<td colspan="3" style="text-align:center;padding-left:10px;font-size:32px; margin-bottom:0em; margin-top:0em">
												<xsl:value-of select="ac/totals/general"/>
											</td>
										</tr>
										<tr bgcolor="#FFFFE6">
											<td  width="150" style="text-align:center;padding-left:10px;font-size:14px; margin-bottom:0em; margin-top:0em"> Shield Bonus: <xsl:value-of select='format-number(ac/sources/shield,"+0;-0")'/>
											</td>
											<td  colspan="2" style="text-align:center;padding-left:10px;font-size:14px; margin-bottom:0em; margin-top:0em"> Shield Raised: &#9744;
											</td>
											
										</tr> 
										
										<tr bgcolor="#FFFFE6">
										</tr>
										<tr bgcolor="#FFFFE6">
											<th colspan="3">Saving Throws</th>
										</tr>
										<tr bgcolor="#FFFFE6">
											<th width="100" style = "padding-left:20px;padding-right:20px; vertical-align:top; font-size: 14px">Fortitude</th>
											<th width="100" style = "padding-left:20px;padding-right:20px; vertical-align:top; font-size: 14px">Reflex</th>
											<th width="100" style = "padding-left:20px;padding-right:20px; vertical-align:top; font-size: 14px">Will</th>
											
										</tr>
										<tr bgcolor="#FFFFE6">
											<td width="50" style="text-align:center;padding-left:10px;font-size:32px; margin-bottom:0em; margin-top:0em">
												<xsl:value-of select='format-number(saves/fortitude/total,"+##;-##")'/>
											</td>
											<td width="50" style="text-align:center;padding-left:10px;font-size:32px; margin-bottom:0em; margin-top:0em">
												<xsl:value-of select='format-number(saves/reflex/total,"+##;-##")'/>
											</td>
											
											<td width="50" style="text-align:center;padding-left:10px;font-size:32px; margin-bottom:0em; margin-top:0em">
												<xsl:value-of select='format-number(saves/will/total,"+##;-##")'/>
											</td> 
										</tr>
										<tr bgcolor="#FFFFE6">
										</tr>
										<tr bgcolor="#FFFFE6">
											<th width="50" style = "padding-left:20px;padding-right:20px; vertical-align:top; font-size: 14px">Speed</th>
											<th width="50" style = "padding-left:20px;padding-right:20px; vertical-align:top; font-size: 14px">Initiative (P)</th>
											<th width="80" style = "padding-left:20px;padding-right:20px; vertical-align:top; font-size: 14px">Initiative (S)</th>
										</tr>
										
										<tr bgcolor="#FFFFE6">
											<td width="50" style="text-align:center;padding-left:10px;font-size:32px; margin-bottom:0em; margin-top:0em">
												<xsl:value-of select='format-number(speed/total,"##;##")'/>
											</td>
											<td width="50" style="text-align:center;padding-left:10px;font-size:32px; margin-bottom:0em; margin-top:0em">
												<xsl:value-of select='format-number(initiative/perceptiontotal,"+##;-##")'/>
											</td>
											
											<td width="50" style="text-align:center;padding-left:10px;font-size:32px; margin-bottom:0em; margin-top:0em">
												<xsl:value-of select='format-number(initiative/stealthttoal,"+##;-##")'/>
											</td> 
										</tr>
									</table>
								</td>
								<!--  ................................Hit points.................................................................................... -->	
								<td>
									<table rules = "all" style="float: middle; border: 2px solid #B59058;border-radius:10px;vertical-align:top;font-size:20px">
										<tr bgcolor="#FFFFE6">
											<th colspan="3">Hit Points</th>
										</tr>
										<tr bgcolor="#FFFFE6">
											<th width="75" style = "padding-left:20px;padding-right:20px; vertical-align:top; font-size: 14px">Max</th>
											<th colspan="2" width="150" style = "padding-left:20px;padding-right:20px; vertical-align:top; font-size: 14px">Current </th>
										</tr>	
										
										<tr bgcolor="#FFFFE6">
											<td width="75" style="text-align:center;padding-left:10px;font-size:32px; margin-bottom:0em; margin-top:0em">
												<xsl:value-of select='format-number(hp/total,"##;##")'/>
											</td> 
											<td colspan="2" width="150" style="text-align:center;padding-left:10px;font-size:32px; margin-bottom:0em; margin-top:0em">
												
											</td> 
										</tr>
										<tr bgcolor="#FFFFE6">
											<td height= "50" width="50" style="vertical-align:top;text-align:left;padding-left:10px;font-size:10px; margin-bottom:0em; margin-top:0em">
												Temporary
											</td>
											<td width="50" style="vertical-align:top;text-align:center;padding-left:10px;font-size:10px; margin-bottom:0em; margin-top:0em">
												Dying
											</td>
											
											<td width="50" style="vertical-align:top;text-align:center;padding-left:10px;font-size:10px; margin-bottom:0em; margin-top:0em">
												Wounded
											</td> 
										</tr>	
										<tr bgcolor="#FFFFE6">
											<td colspan= "3" height= "50" width="50" style="vertical-align:top;text-align:left;padding-left:10px;font-size:10px; margin-bottom:0em; margin-top:0em">
												Resitances and Immunities
											</td>
											
										</tr>	
										<tr bgcolor="#FFFFE6">
											<td colspan= "3" height= "50" width="50" style="vertical-align:top;text-align:left;padding-left:10px;font-size:10px; margin-bottom:0em; margin-top:0em">
												Conditions
											</td>
											
										</tr>		
									</table>
								</td>
							</tr>
						</table>
						<!--  ................................Weapons/Attacks.................................................................................... -->					
						
						<div align="center">
							<table>
								<tr style="vertical-align:top">
									<td style="vertical-align:top">
										<table rules = "all" style="float: left; border: 2px solid #B59058;border-radius:10px;font-size:20px">
											<tr bgcolor="#FFFFE6">
												<th colspan="6" style = "padding-left:20px;padding-right:20px; vertical-align:top; font-size: 20px">Weapons/Attacks</th>
											</tr>
											<tr bgcolor="#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 14px">
												<th>Weapon</th>
												<th>Prof</th>
												<th>Attack</th>
												<th>Damage</th>
												<th>Type</th>
												<th>Range</th>
											</tr>
											<xsl:for-each select="weaponlist/*">
												<tr bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; text-align: center; font-size: 16px">
													<td width="180">
														<xsl:value-of select="name"/>
													</td>
													<td width="25" style ="text-transform:uppercase; padding-left:20px;padding-right:20px;  font-size: 16px">
														<xsl:value-of select='substring(proflevel,1,1)'/>
													</td>
													
													
													<td width="115" align="center">
														
														<xsl:value-of select='format-number(attack1,"+0;-0")'/>
														/
														<xsl:value-of select='format-number(attack2,"+0;-0")'/>
														/
														<xsl:value-of select='format-number(attack3,"+0;-0")'/>
														
													</td>
													<td width="150" align="center">
														
														
														
														
														<xsl:choose>
															<xsl:when test='substring(damagelist/id-00001/dice,1,1) = "d"'>
																<xsl:value-of select="concat('1',damagelist/id-00001/dice)"/>
															</xsl:when>
															<xsl:otherwise>
																<xsl:value-of select="damagelist/id-00001/dice"/>
															</xsl:otherwise>
														</xsl:choose>
														
														<xsl:if test='damagelist/id-00001/stat = "strength"'>
															<xsl:variable name="statval" select="$strBonus"/>	
															<xsl:variable name="statM" select="damagelist/id-00001/statmult"/>
															<xsl:variable name="miscB" select="damagelist/id-00001/bonus"/>
															<xsl:variable name="statMx" select="damagelist/id-00001/statmax"/>
															<xsl:variable name="totbonus" select="$statval * $statM + $miscB"/>
															<xsl:if test="$totbonus &gt; 0">+</xsl:if>
															<xsl:value-of select="floor($totbonus)*($totbonus >= 0) + ceiling($totbonus) * not($totbonus >= 0)"/>
														</xsl:if>	
														<xsl:if test='damagelist/id-00001/stat = "dexterity"'>
															<xsl:variable name="statval" select="$dexBonus"/>	
															<xsl:variable name="statM" select="damagelist/id-00001/statmult"/>
															<xsl:variable name="miscB" select="damagelist/id-00001/bonus"/>
															<xsl:variable name="statMx" select="damagelist/id-00001/statmax"/>
															<xsl:variable name="totbonus" select="$statval * $statM + $miscB"/>
															<xsl:if test="$totbonus &gt; 0">+</xsl:if>
															<xsl:value-of select="floor($totbonus)*($totbonus >= 0) + ceiling($totbonus) * not($totbonus >= 0)"/>
														</xsl:if>		
														<xsl:if test='damagelist/id-00001/stat = "constitution"'>
															<xsl:variable name="statval" select="$conBonus"/>	
															<xsl:variable name="statM" select="damagelist/id-00001/statmult"/>
															<xsl:variable name="miscB" select="damagelist/id-00001/bonus"/>
															<xsl:variable name="statMx" select="damagelist/id-00001/statmax"/>
															<xsl:variable name="totbonus" select="$statval * $statM + $miscB"/>
															<xsl:if test="$totbonus &gt; 0">+</xsl:if>
															<xsl:value-of select="floor($totbonus)*($totbonus >= 0) + ceiling($totbonus) * not($totbonus >= 0)"/>
														</xsl:if>	
														<xsl:if test='damagelist/id-00001/stat = "intelligence"'>
															<xsl:variable name="statval" select="$intBonus"/>	
															<xsl:variable name="statM" select="damagelist/id-00001/statmult"/>
															<xsl:variable name="miscB" select="damagelist/id-00001/bonus"/>
															<xsl:variable name="statMx" select="damagelist/id-00001/statmax"/>
															<xsl:variable name="totbonus" select="$statval * $statM + $miscB"/>
															<xsl:if test="$totbonus &gt; 0">+</xsl:if>
															<xsl:value-of select="floor($totbonus)*($totbonus >= 0) + ceiling($totbonus) * not($totbonus >= 0)"/>
														</xsl:if>		
														<xsl:if test='damagelist/id-00001/stat = "wisdom"'>
															<xsl:variable name="statval" select="$wisBonus"/>	
															<xsl:variable name="statM" select="damagelist/id-00001/statmult"/>
															<xsl:variable name="miscB" select="damagelist/id-00001/bonus"/>
															<xsl:variable name="statMx" select="damagelist/id-00001/statmax"/>
															<xsl:variable name="totbonus" select="$statval * $statM + $miscB"/>
															<xsl:if test="$totbonus &gt; 0">+</xsl:if>
															<xsl:value-of select="floor($totbonus)*($totbonus >= 0) + ceiling($totbonus) * not($totbonus >= 0)"/>
														</xsl:if>	
														<xsl:if test='damagelist/id-00001/stat = "charisma"'>
															<xsl:variable name="statval" select="$chaBonus"/>	
															<xsl:variable name="statM" select="damagelist/id-00001/statmult"/>
															<xsl:variable name="miscB" select="damagelist/id-00001/bonus"/>
															<xsl:variable name="statMx" select="damagelist/id-00001/statmax"/>
															<xsl:variable name="totbonus" select="$statval * $statM + $miscB"/>
															<xsl:if test="$totbonus &gt; 0">+</xsl:if>
															<xsl:value-of select="floor($totbonus)*($totbonus >= 0) + ceiling($totbonus) * not($totbonus >= 0)"/>
														</xsl:if>	
														
													</td>
													<td width="100" align="center">
														<xsl:value-of select="damagelist/id-00001/type"/>
													</td>
													<td width="50" align="center">
														<xsl:value-of select="rangeincrement"/>
													</td>
												</tr>
											</xsl:for-each>
											<xsl:if test="count(weaponlist/*) &lt; 7">
												<tr  bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
													<td  width="180">&#160;</td>
													<td  width="25">&#160;</td>
													<td  width="115">&#160;</td>
													<td  width="150">&#160;</td>
													<td  width="100">&#160;</td>
													<td  width="50">&#160;</td>	
												</tr>
											</xsl:if>
											<xsl:if test="count(weaponlist/*) &lt; 6">
												<tr  bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
													<td  width="180">&#160;</td>
													<td  width="25">&#160;</td>
													<td  width="115">&#160;</td>
													<td  width="150">&#160;</td>
													<td  width="100">&#160;</td>
													<td  width="50">&#160;</td>	
												</tr>
											</xsl:if>
											<xsl:if test="count(weaponlist/*) &lt; 5">
												<tr  bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
													<td  width="180">&#160;</td>
													<td  width="25">&#160;</td>
													<td  width="115">&#160;</td>
													<td  width="150">&#160;</td>
													<td  width="100">&#160;</td>
													<td  width="50">&#160;</td>	
												</tr>
											</xsl:if>
											<xsl:if test="count(weaponlist/*) &lt; 4">
												<tr  bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
													<td  width="180">&#160;</td>
													<td  width="25">&#160;</td>
													<td  width="115">&#160;</td>
													<td  width="150">&#160;</td>
													<td  width="100">&#160;</td>
													<td  width="50">&#160;</td>	
												</tr>
											</xsl:if>
										</table>
										
									</td>
									
									<td rowspan= "2">
										<table align="center">
											<tr >
												<td >
													<table rules = "all" align="center" style="float: right; border: 2px solid #B59058;border-radius:10px;font-size:15px" >
														<tr bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 20px">
															<th colspan="3">Skills</th>
														</tr>
														<tr bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
															<th>Name</th>
															<th>Stat</th>
															<th>Bonus</th>
															
															
														</tr>
														<xsl:for-each select="skilllist/*">
															<tr bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
																<td width="120">
																	<xsl:value-of select="label"/> 
																	<xsl:if test='sublabel !=""' >
																		-																
																		<xsl:value-of select="sublabel"/>
																	</xsl:if>
																</td>
																<td width="70" align="center">
																	<xsl:value-of select='substring(statname,1,3)'/>
																</td>
																<td width="100" align="center">
																	
																	
																	
																	<xsl:value-of select='format-number(total,"+0;-0")'/>
																</td>
															</tr>
														</xsl:for-each>
														
													</table>
												</td>
											</tr>
											
										</table>
									</td>
								</tr>
								<!--  ................................money, encumberence, languages.................................................................................... -->	
								<tr style="vertical-align:bottom">
									<td style="vertical-align:bottom">
										<table style="float: center; vertical-align:top">
											<tr style="vertical-align:top">
												<td style="vertical-align:top">
													<table rules = "all" style="float: left; border: 2px solid #B59058;border-radius:10px;font-size:15px">
														
														
														
														
														
														<tr bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
															<th colspan="3" style="vertical-align:top">Wealth</th>
														</tr>
														<xsl:for-each select="coins/*">
															<xsl:if test="name() != 'slot5' and name() != 'slot6'">
																<tr bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
																	<td colspan="2" width="100" align = "center">
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
														<tr bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
															<th colspan="3" style="vertical-align:top">&#160;</th>
														</tr>
														
													</table>
													
												</td>
												<td style="vertical-align:top">
													<table rules = "all" style="float: centre; border: 2px solid #B59058;border-radius:10px;font-size:15px">
														<tr bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px" >
															<th colspan="2">Languages</th>
														</tr>
														<xsl:for-each select="languagelist/*">
															<xsl:if test="position() &lt; 7">
																<tr  bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
																	<td colspan="2" width="150" align = "center">
																		<xsl:value-of select="name"/>
																	</td>
																</tr>
															</xsl:if>
														</xsl:for-each>
														<xsl:if test="count(languagelist/*) &lt; 7">
															<tr  bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
																<td colspan="2" width="125">&#160;</td>
															</tr>
														</xsl:if>
														<xsl:if test="count(languagelist/*) &lt; 6">
															<tr  bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
																<td colspan="2" width="125">&#160;</td>
															</tr>
														</xsl:if>
														<xsl:if test="count(languagelist/*) &lt; 5">
															<tr  bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
																<td colspan="2" width="125">&#160;</td>
															</tr>
														</xsl:if>
														
													</table>
												</td>
												<td style="vertical-align:top">
													<table rules = "all" style="float: right; border: 2px solid #B59058;border-radius:10px;font-size:15px">
														<tr bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
															<th colspan="2">Encumbrance</th>
														</tr>
														
														<tr bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
															<td width = "120">
																Total bulk
															</td>
															<td Width = "80" align="center">
																<xsl:value-of select="encumbrance/load"/>
															</td>
														</tr>
														
														<tr bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
															<td>
																Encumbered
															</td>
															<td  align="center">
																<xsl:value-of select="encumbrance/nopenalty"/>
															</td>
														</tr>
														
														<tr bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
															<td>
																Max load
															</td>
															<td  align="center">
																<xsl:value-of select="encumbrance/limit"/>
															</td>
														</tr>
														
														<tr rowspan="2"  bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 12px">
															<td colspan = "2" width = "180">
																* a character who is encumbered reduces their speed by 10ft and has the clumsy(1) condition
															</td>
														</tr>
														
														
													</table>
												</td>
											</tr>
											
										</table>
									</td>
								</tr>	
								
							</table>
						</div>
						
						
					</div>
					
					
					
					<div align="center">
						<div style="page-break-before: always">&#160;</div>
						<table align="center">
							<tr style="vertical-align:top">
								<td>
									<table rules = "all" align="center" style="float: middle; border: 2px solid #B59058;border-radius:10px;font-size:20px" >
										<tr >
											<th colspan="2" bgcolor = "#FFFFE6">Traits</th>
										</tr>
										<xsl:for-each select="traitlist/*">
											<tr bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
												<td width="175">
													<xsl:value-of select="name"/>
												</td>
												<td width="375" align="left" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 12px">
													<xsl:copy-of select="text"/>
												</td>
											</tr>
										</xsl:for-each>
										
									</table>
									<table rules = "all" align="center" style="float: middle; border: 2px solid #B59058;border-radius:10px;font-size:20px" >
										<tr >
											<th colspan="2" bgcolor = "#FFFFE6">Feats</th>
										</tr>
										<xsl:for-each select="featlist/*">
											<tr bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
												<td width="175">
													<xsl:value-of select="name"/>
												</td>
												<td width="375" align="left" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 12px">
													<xsl:copy-of select="effectsbenefits"/>
												</td>
											</tr>
										</xsl:for-each>
										
									</table>
								</td>
								<td>
									<table rules = "all" align="left" style="float: left; border: 2px solid #B59058;border-radius:10px;font-size:15px">
										<tr>
											<th colspan="5" bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 20px">Equipment</th>
										</tr>
										<tr >
											<th bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">Qty</th>
											<th bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">Item</th>
											<th bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">Bulk</th>
											<th bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">Cost</th>
											<th bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px"></th>
										</tr>
										<xsl:for-each select="inventorylist/*">
											<tr bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
												<td width="40" align="center">
													<xsl:value-of select="count"/>
												</td>
												<td width="250">
													<xsl:value-of select="name"/>
												</td>
												
												<td width="50" align="center">
													<xsl:value-of select="bulk"/>
												</td>
												<td width="50" align="center">
													<xsl:value-of select="cost"/>
												</td>
												<td width="50" align="center">
													<xsl:if test='carried ="0"' >
														&#9872;
													</xsl:if>
													<xsl:if test='carried ="1"' >
														&#9873;
													</xsl:if>
													<xsl:if test='carried ="2"' >
														&#9874;
													</xsl:if>
												</td>
											</tr>
										</xsl:for-each>
										<tr  bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
											<td  >&#160;</td>
											<td  >&#160;</td>
											<td  >&#160;</td>
											<td  >&#160;</td>
											<td  >&#160;</td>
										</tr>
										<tr  bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
											<td  >&#160;</td>
											<td  >&#160;</td>
											<td  >&#160;</td>
											<td  >&#160;</td>
											<td  >&#160;</td>
										</tr>
										<tr  bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
											<td  >&#160;</td>
											<td  >&#160;</td>
											<td  >&#160;</td>
											<td  >&#160;</td>
											<td  >&#160;</td>
										</tr>
										<tr  bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
											<td  >&#160;</td>
											<td  >&#160;</td>
											<td  >&#160;</td>
											<td  >&#160;</td>
											<td  >&#160;</td>
										</tr>
										<tr  bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
											<td  >&#160;</td>
											<td  >&#160;</td>
											<td  >&#160;</td>
											<td  >&#160;</td>
											<td  >&#160;</td>
										</tr>
										<tr  bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">
											<td  >&#160;</td>
											<td  >&#160;</td>
											<td  >&#160;</td>
											<td  >&#160;</td>
											<td  >&#160;</td>
										</tr>
										
										<tr  bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 12px">
											<td colspan = "5" align="right">
												* &#9873;: Carried, &#9874;: Equipped, &#9872;: Dropped
											</td>
										</tr>
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
									<table rules = "all"  align="left" style="float: left; border: 2px solid #B59058;border-radius:10px;font-size:15px">
										<tr>
											<th colspan="11" bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 20px">Spells Available</th>
										</tr>
										<tr bgcolor = "#FFE4b5">
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
										<tr bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 15px">
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
										
									</table>
								</td>
							</tr>
						</table>
						
						<table align="center">
							<tr>
								<td>
									<xsl:for-each select="spellset/*/levels/*">
										<xsl:if test="spells/*">
											<table rules = "all"  style="border: 2px solid #B59058;border-radius:10px;font-size:15px">
												
												<tr bgcolor = "#FFE4b5">
													<th colspan="05" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 20px">
														<xsl:value-of select="../../label"/>  - Level <xsl:value-of select="level"/>
														<td>
															
															<xsl:if test='../../castertype ="spontaneous"' >
																<xsl:if test='level ="0"' >
																	<xsl:variable name="nocasts" select="../../availablelevel0"/>
																	&#160; 
																	<xsl:call-template name="looper">
																		<xsl:with-param name="iterations" select="$nocasts"/>
																	</xsl:call-template>	
																</xsl:if>
															</xsl:if>
															<xsl:if test='../../castertype ="spontaneous"' >
																<xsl:if test='level ="1"' >
																	<xsl:variable name="nocasts" select="../../availablelevel1"/>
																	&#160; 
																	<xsl:call-template name="looper">
																		<xsl:with-param name="iterations" select="$nocasts"/>
																	</xsl:call-template>	
																</xsl:if>
															</xsl:if>
															<xsl:if test='../../castertype ="spontaneous"' >
																<xsl:if test='level ="2"' >
																	<xsl:variable name="nocasts" select="../../availablelevel2"/>
																	&#160; 
																	<xsl:call-template name="looper">
																		<xsl:with-param name="iterations" select="$nocasts"/>
																	</xsl:call-template>	
																</xsl:if>
															</xsl:if>
															<xsl:if test='../../castertype ="spontaneous"' >
																<xsl:if test='level ="3"' >
																	<xsl:variable name="nocasts" select="../../availablelevel3"/>
																	&#160; 
																	<xsl:call-template name="looper">
																		<xsl:with-param name="iterations" select="$nocasts"/>
																	</xsl:call-template>	
																</xsl:if>
															</xsl:if>
															<xsl:if test='../../castertype ="spontaneous"' >
																<xsl:if test='level ="4"' >
																	<xsl:variable name="nocasts" select="../../availablelevel4"/>
																	&#160; 
																	<xsl:call-template name="looper">
																		<xsl:with-param name="iterations" select="$nocasts"/>
																	</xsl:call-template>	
																</xsl:if>
															</xsl:if>
															<xsl:if test='../../castertype ="spontaneous"' >
																<xsl:if test='level ="5"' >
																	<xsl:variable name="nocasts" select="../../availablelevel5"/>
																	&#160; 
																	<xsl:call-template name="looper">
																		<xsl:with-param name="iterations" select="$nocasts"/>
																	</xsl:call-template>	
																</xsl:if>
															</xsl:if>
															<xsl:if test='../../castertype ="spontaneous"' >
																<xsl:if test='level ="6"' >
																	<xsl:variable name="nocasts" select="../../availablelevel6"/>
																	&#160; 
																	<xsl:call-template name="looper">
																		<xsl:with-param name="iterations" select="$nocasts"/>
																	</xsl:call-template>	
																</xsl:if>
															</xsl:if>
															<xsl:if test='../../castertype ="spontaneous"' >
																<xsl:if test='level ="7"' >
																	<xsl:variable name="nocasts" select="../../availablelevel7"/>
																	&#160; 
																	<xsl:call-template name="looper">
																		<xsl:with-param name="iterations" select="$nocasts"/>
																	</xsl:call-template>	
																</xsl:if>
															</xsl:if>
															<xsl:if test='../../castertype ="spontaneous"' >
																<xsl:if test='level ="8"' >
																	<xsl:variable name="nocasts" select="../../availablelevel8"/>
																	&#160; 
																	<xsl:call-template name="looper">
																		<xsl:with-param name="iterations" select="$nocasts"/>
																	</xsl:call-template>	
																</xsl:if>
															</xsl:if>
															<xsl:if test='../../castertype ="spontaneous"' >
																<xsl:if test='level ="9"' >
																	<xsl:variable name="nocasts" select="../../availablelevel9"/>
																	&#160; 
																	<xsl:call-template name="looper">
																		<xsl:with-param name="iterations" select="$nocasts"/>
																	</xsl:call-template>	
																</xsl:if>
															</xsl:if>
															
														</td>
														

														
													</th>
												</tr>
												<tr >
													<th bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px"></th>
													<th bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">Name</th>
													<th bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">Cast</th>
													<th bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">Duration</th>
													<th bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">Traits</th>
													<th bgcolor = "#FFFFE6" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 16px">Description</th>
													
												</tr>
												<xsl:for-each select="spells/*">
													
													<tr bgcolor = "#FFFFE6" align= "center" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 15px">
														<td width="20">
														<xsl:if test='../../totalprepared &gt; "0"' >
														<xsl:if test='prepared &gt;="1"' >
																	<xsl:variable name="nocasts" select="prepared"/>
																	 
																	<xsl:call-template name="looper">
																		<xsl:with-param name="iterations" select="$nocasts"/>
																	</xsl:call-template>	
																</xsl:if>
														</xsl:if>
														</td>
														
														<td width="150">
															<xsl:value-of select="name"/>
														</td>
														<td width="80" align="left" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 12px">
															<xsl:value-of select="casting"/>
														</td>
														<td width="100" align="left" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 12px">
															<xsl:value-of select="duration"/>
														</td>
														<td width="100" align="left" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 12px">
															<xsl:value-of select="traits"/>
														</td>
														<td width="480" align="left" style = "padding-left:10px;padding-right:10px; vertical-align:top; font-size: 12px">
															<xsl:copy-of select="effects"/>
														</td>
														
													</tr>
													
												</xsl:for-each>
												
											</table>
											<tr>&#160;</tr>
											
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
	<xsl:template name="looper">
		<xsl:param name="iterations"/>
		<xsl:if test="$iterations > 0">
			<!-- This is the body of your for loop-->
			&#9744;
			<!-- recursive call -->
			<xsl:call-template name="looper">
				<xsl:with-param name="iterations" select="$iterations - 1"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
