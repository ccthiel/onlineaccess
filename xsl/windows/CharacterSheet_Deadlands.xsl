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
        <title>Fantasy Grounds Deadlands Character</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
        <style>
          body
          {
          font-family: Comic Sans MS, Candara;
          font-size: 12pt;
   	      font-weight: bold;
          }
		  .skill {
			height: 29px;
			width: 200px;
			position: relative;
			text-overflow: clip;
		  }
		  .skillRoll {
			height: 29px;
			width: 50px;
			position: relative;
		  }		  
		  .skillBonus {
			font-size: x-small;		  
		  }
 		 .edge {
			height: 25px;
			width: 190px;
			position: relative;
			text-overflow: clip;
			font-size: x-small;
			padding: 0px;
			margin: 0px;
		  }
 		 .hindrance {
			height: 22px;
			width: 190px;
			position: relative;
			text-overflow: clip;
			font-size: x-small;
			padding: 0px;
			margin: 0px;
		  }
		  
		  .derivedStat {
			font-size: x-large;
			position: absolute;
		  }
		  table, th, td {
			border: 0px solid black;
		  }
        </style>
  <!-- <link rel="StyleSheet" href="DnD4ev1-MeepoSose-Custom.css" type="text/css" />
      -->
	  </head>
      <body>
		<img src='http://www.fantasygrounds.com/images/charsheets/DLEXCharacterSheet.jpg' style="position: absolute; top: 0; left: 0; z-index: -1;" />		
		
        <xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
        <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
		<xsl:for-each select="//character">
			<div style="position: absolute;top: 30;left: 63;" ><xsl:value-of select="name" /></div>
			
			<!-- Position and display the attributes -->
			<div style="position: absolute;top: 95;left: 112;" ><xsl:value-of select="smarts" /></div>
			<div style="position: absolute;top: 202;left: 23;" ><xsl:value-of select="agility" /></div>
			<div style="position: absolute;top: 152;left: 241;" ><xsl:value-of select="vigor" /></div>
			<div style="position: absolute;top: 289;left: 227;" ><xsl:value-of select="spirit" /></div>
			<div style="position: absolute;top: 318;left: 92;" ><xsl:value-of select="strength" /></div>
			
			<!-- Display all the Skills and their rolls -->
			<div style="position: absolute;top:394; left: 75;">
			<xsl:for-each select="skills/*">
				<div class="skill">
					<xsl:value-of select="name" />
					<xsl:for-each select="bonuslist/*">
						<span class="skillbonus">
						<xsl:text> (</xsl:text>
						<xsl:if test="bonus > 0">
							<xsl:text>+</xsl:text>
						</xsl:if>						
						<xsl:value-of select="bonus" />
						<xsl:text> </xsl:text>
						<xsl:value-of select="name" />)</span>
					</xsl:for-each>
				</div>
			</xsl:for-each>
			</div>
			<div style="position: absolute;top:394; left: 32;">
			<xsl:for-each select="skills/*">
				<div class="skillRoll">
					<xsl:value-of select="skill" />
					<xsl:if test="skillmod > 0">
						<xsl:text>+</xsl:text>
						<xsl:value-of select="skillmod" />						
					</xsl:if>
				</div>
			</xsl:for-each>
			</div>		

			<!-- Define and display all the Hindrances -->
			<div style="position: absolute;top:59; left: 508;">
				<xsl:for-each select="hindrances/*">
					<div class="hindrance">
						<xsl:value-of select="name" />
					</div>
				</xsl:for-each>
			</div>			
						
			<!-- Define and display all the Eges -->
			<div style="position: absolute;top:170; left: 508;">
				<xsl:for-each select="edges/*">
					<div class="edge">
						<xsl:value-of select="name" />
					</div>
				</xsl:for-each>
			</div>			

			<!-- Display derived stats -->
			<div class="derivedStat" style="top: 35;left: 720;" ><xsl:value-of select="charisma" /></div>
			<div class="derivedStat" style="top: 104;left: 712;" ><xsl:value-of select="grit" /></div>
			<div class="derivedStat" style="top: 170;left: 715;" ><xsl:value-of select="pace" /></div>
			<div class="derivedStat" style="top: 233;left: 720;" ><xsl:value-of select="parry" /></div>
			<div class="derivedStat" style="top: 298;left: 713;" ><xsl:value-of select="toughness" /></div>
			
			<!-- Define and display all the Weapons -->
			<div style="position: absolute;top:832; left: 25;">
				<table>					
					<xsl:for-each select="weaponlist/*">
						<tr>
							<td width="210">
							<xsl:value-of select="name" />
							</td>
							<td width="150">
								<xsl:value-of select="range" />
							</td>
							<td width="150">
								<xsl:value-of select="damage" />
							</td>							
							<td width="200">
								<xsl:value-of select="notes" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</div>				
			
			<!-- End of Character -->
		</xsl:for-each>
      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>