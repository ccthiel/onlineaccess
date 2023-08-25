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
        <title>Fantasy Grounds Dungeons and Dragons Character</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
        <style>
          body
          {
          font-family: Comic Sans MS, Candara;
          font-size: 10pt;
   	      font-weight: normal;
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
		  
		  .page {
			page-break-after: always;
			position: relative;
			height: 7.5in;
		  }
		  .pagebg {
			height: 7.5in;
		  }		  
		  .sheetData {
			position: absolute;
			font-size: medium;
		  }
		  .sheetDataBig {
			position: absolute; 
			font-size: large;
		  }
		  .sheetDataSmall{
			position: absolute; 
			font-size: x-small;
		  }		
		  .sheetDataXSmall {
			position: absolute; 
			font-size: xx-small;
		  }			  
		  .sheetDataXSmall TR TD {
			font-size: xx-small;
		  }
		  input[type='checkbox'] {
			width:8px;
			height:8px;
			padding: 0px;
			margin: 1px;
		}
        .attribute {
            width: 30px;
            height: 25px;
            position: absolute;
            font-size: large;
            text-align: center;
        }
        .value {
            position: absolute;
            text-align: center;
            font-size: large;
        }
        .lvalue {
            position: absolute;
            text-align: left;
            font-size: large;
        }
        .bonus {
            position: absolute;
            width: 18px;
            height: 15px;
            text-align: center;
        }
        .l0 {
            height: 15px;
        }
        .l1 {
            height: 18px;
        }
        .l2 {
            height: 32px;
        }
        .l3 {
            height: 47px;
        }
        .l4 {
            height: 62px;
        }
        .w1 {
            width: 18px;
        }
        .w2 {
            width: 30px;
        }

    </style>
    <script src="https://www.fantasygrounds.com/js/textFit-master/textFit.js"></script>
  </head>
      <body>		

		<xsl:for-each select="//character">
			<xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
			<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
			<xsl:variable name="strBonus" select="abilities/strength/bonus" />
			<xsl:variable name="dexBonus" select="abilities/dexterity/bonus" />
			<xsl:variable name="conBonus" select="abilities/constitution/bonus" />
			<xsl:variable name="intBonus" select="abilities/intelligence/bonus" />
			<xsl:variable name="wisBonus" select="abilities/wisdom/bonus" />
			<xsl:variable name="chaBonus" select="abilities/charisma/bonus" />
			<xsl:variable name="profBonus" select="profbonus" />		
			<div id="page1" class="page">
				<img class="pagebg" src='http://www.fantasygrounds.com/images/charsheets/DDALRoD_CharacterSheet_Page_1.jpg' style="position: absolute; top: 0; left: 0; height: 7.5in; z-index: -1;" />		
			
				<!-- Layout basic info -->
				<div id="charname" class="value l2" style="top: 66; left: 63; width: 104px;"><xsl:value-of select="name" /></div>
				<!-- Top Line data -->
				<div id="background" class="lvalue l1" style="top: 40; left: 265; width: 78;"><xsl:value-of select="background" /></div>
				<div id="faction" class="lvalue l1" style="top: 40; left: 430; width: 78;"><xsl:value-of select="faction" /></div>
				
				
				<!-- 2nd line data -->
				<div id="race" class="lvalue l1" style="top: 65; left: 185; width: 78;"><xsl:value-of select="race" /></div>
				<div id="alignment" class="lvalue l1" style="top: 65; left: 265; width: 78;"><xsl:value-of select="alignment" /></div>
				<div id="exp" class="lvalue l1" style="top: 65; left: 365; width: 78;"><xsl:value-of select="exp" /></div>
				<div id="dci" class="lvalue l1" style="top: 65; left: 430; width: 78;"><xsl:value-of select="dci" /></div>

				<!-- Attributes -->
				<div id="STR" class="attribute" style="top: 136; left: 36;"><xsl:value-of select="abilities/strength/score" /></div>
				<div id="STRBonus" class="bonus" style="top: 167; left: 44;"><xsl:if test="$strBonus >= 0">+</xsl:if><xsl:value-of select="$strBonus" /></div>
				
				<div id="DEX" class="attribute"  style="top: 200; left: 36;"><xsl:value-of select="abilities/dexterity/score" /></div>
				<div id="DEXBonus" class="bonus" style="top: 232; left: 44;"><xsl:if test="$dexBonus >= 0">+</xsl:if><xsl:value-of select="$dexBonus" /></div>
				
				<div id="CON" class="attribute" style="top: 265; left: 36;"><xsl:value-of select="abilities/constitution/score" /></div>
				<div id="CONBonus" class="bonus" style="top: 298; left: 44;"><xsl:if test="$conBonus >= 0">+</xsl:if><xsl:value-of select="$conBonus" /></div>
				
				<div id="INT" class="attribute" style="top: 330; left: 36;"><xsl:value-of select="abilities/intelligence/score" /></div>
				<div id="INTBonus" class="bonus" style="top: 363; left: 44;"><xsl:if test="$intBonus >= 0">+</xsl:if><xsl:value-of select="$intBonus" /></div>
				
				<div id="WIS" class="attribute" style="top: 395; left: 36;"><xsl:value-of select="abilities/wisdom/score" /></div>
				<div id="WISBonus" class="bonus" style="top: 428; left: 44;"><xsl:if test="$wisBonus >= 0">+</xsl:if><xsl:value-of select="$wisBonus" /></div>
				
				<div id="CHA" class="attribute" style="top: 460; left: 36;"><xsl:value-of select="abilities/charisma/score" /></div>
				<div id="CHABonus" class="bonus" style="top: 493; left: 44;"><xsl:if test="$chaBonus >= 0">+</xsl:if><xsl:value-of select="$chaBonus" /></div>
				
				<!-- Page 1 2nd column -->
				<!-- Proficiency Bonus -->				
				<div id="profBonus" class="value w1 l1" style="top: 153; left: 92;"><xsl:if test="profbonus >= 0">+</xsl:if><xsl:value-of select="profbonus" /></div>
				<!-- Saves -->
				<div class="sheetDataSmall" style="top: 183; left: 101;"><xsl:if test="abilities/strength/save >= 0">+</xsl:if><xsl:value-of select="abilities/strength/save" /></div>
				<div class="sheetDataSmall" style="top: 195; left: 101;"><xsl:if test="abilities/dexterity/save >= 0">+</xsl:if><xsl:value-of select="abilities/dexterity/save" /></div>
				<div class="sheetDataSmall" style="top: 207; left: 101;"><xsl:if test="abilities/constitution/save >= 0">+</xsl:if><xsl:value-of select="abilities/constitution/save" /></div>
				<div class="sheetDataSmall" style="top: 219; left: 101;"><xsl:if test="abilities/intelligence/save >= 0">+</xsl:if><xsl:value-of select="abilities/intelligence/save" /></div>
				<div class="sheetDataSmall" style="top: 231; left: 101;"><xsl:if test="abilities/wisdom/save >= 0">+</xsl:if><xsl:value-of select="abilities/wisdom/save" /></div>
				<div class="sheetDataSmall" style="top: 243; left: 101;"><xsl:if test="abilities/charisma/save >= 0">+</xsl:if><xsl:value-of select="abilities/charisma/save" /></div>
				<!-- Skills -->
				<div class="sheetDataSmall" style="top: 287; left: 101;"><xsl:if test="skilllist/*[name='Acrobatics']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Acrobatics']/total" /></div>
				<div class="sheetDataSmall" style="top: 299; left: 101;"><xsl:if test="skilllist/*[name='Animal Handling']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Animal Handling']/total" /></div>
				<div class="sheetDataSmall" style="top: 311; left: 101;"><xsl:if test="skilllist/*[name='Arcana']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Arcana']/total" /></div>
				<div class="sheetDataSmall" style="top: 324; left: 101;"><xsl:if test="skilllist/*[name='Athletics']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Athletics']/total" /></div>
				<div class="sheetDataSmall" style="top: 336; left: 101;"><xsl:if test="skilllist/*[name='Deception']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Deception']/total" /></div>
				<div class="sheetDataSmall" style="top: 348; left: 101;"><xsl:if test="skilllist/*[name='History']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='History']/total" /></div>
				<div class="sheetDataSmall" style="top: 360; left: 101;"><xsl:if test="skilllist/*[name='Insight']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Insight']/total" /></div>
				<div class="sheetDataSmall" style="top: 372; left: 101;"><xsl:if test="skilllist/*[name='Intimidation']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Intimidation']/total" /></div>
				<div class="sheetDataSmall" style="top: 386; left: 101;"><xsl:if test="skilllist/*[name='Investigation']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Investigation']/total" /></div>
				<div class="sheetDataSmall" style="top: 398; left: 101;"><xsl:if test="skilllist/*[name='Medicine']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Medicine']/total" /></div>
				<div class="sheetDataSmall" style="top: 410; left: 101;"><xsl:if test="skilllist/*[name='Nature']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Nature']/total" /></div>
				<div class="sheetDataSmall" style="top: 422; left: 101;"><xsl:if test="skilllist/*[name='Perception']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Perception']/total" /></div>
				<div class="sheetDataSmall" style="top: 434; left: 101;"><xsl:if test="skilllist/*[name='Performance']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Performance']/total" /></div>
				<div class="sheetDataSmall" style="top: 446; left: 101;"><xsl:if test="skilllist/*[name='Persuasion']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Persuasion']/total" /></div>
				<div class="sheetDataSmall" style="top: 459; left: 101;"><xsl:if test="skilllist/*[name='Religion']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Religion']/total" /></div>
				<div class="sheetDataSmall" style="top: 472; left: 101;"><xsl:if test="skilllist/*[name='Sleight of Hand']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Sleight of Hand']/total" /></div>
				<div class="sheetDataSmall" style="top: 484; left: 101;"><xsl:if test="skilllist/*[name='Stealth']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Stealth']/total" /></div>
				<div class="sheetDataSmall" style="top: 496; left: 101;"><xsl:if test="skilllist/*[name='Survival']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Survival']/total" /></div>
				
				<!-- Passive Perception -->
				<div id="passivePerception" class="value w1 l1" style="top: 535; left: 32;"><xsl:value-of select="perception" /></div>
				
				<!-- AC, Initiative and Speed -->
				<div id="AC" class="value l1" style="top: 125; left: 208; width: 38; height: 30;"><xsl:value-of select="defenses/ac/total" /></div>
				<div id="Init" class="value l1" style="top: 125; left: 260; width: 38; height: 30;"><xsl:if test="initiative/total">+</xsl:if><xsl:value-of select="initiative/total" /></div>
				<div id="Speed" class="value l1" style="top: 125; left: 313; width: 38; height: 30;"><xsl:value-of select="speed/total" /></div>
				
				<!-- HP -->
				<div class="value l1" style="top: 175; left: 260; width: 78px;"><xsl:value-of select="hp/total" /></div>
				
				<!-- Class and Level -->
				<div id="classLevel" class="lvalue"  style="top: 40; left: 185; height: 20; width: 78; ">
				<!-- Abbreviate if more than 1 class -->
				<xsl:if test="count(classes/*) &gt; 1">
					<xsl:for-each select="classes/*">
						<xsl:value-of select="substring(concat(name,'   '),1,3)" />(<xsl:value-of select="level" />) 
					</xsl:for-each>				
				</xsl:if>
				<!-- otherwise show the full class name -->
				<xsl:if test="count(classes/*) &lt; 2">
					<xsl:for-each select="classes/*">
						<xsl:value-of select="name" />(<xsl:value-of select="level" />)
					</xsl:for-each>
				</xsl:if>
				</div>
				<!-- Hit Die -->
				<div id="hitdie" class="value"  style="top: 300; left: 208; height: 30; width: 65;">
				<xsl:for-each select="classes/*">
					<xsl:call-template name="checkboxes">
						<xsl:with-param name="index" select="1" />
						<xsl:with-param name="total" select="level" />
					</xsl:call-template>
					<div class="lvalue l0" style="width: 20px; display: inline-block;"><xsl:value-of select="hddie" /></div>
					<xsl:text> </xsl:text>
				</xsl:for-each>
				</div>
				
				<!-- Personality Traits -->
				<div id="personalityTraits" class="lvalue l3" style="top: 125; left: 380;width: 140;"><xsl:value-of select="personalitytraits" /></div>
				<div id="ideals" class="lvalue l3" style="top: 185; left: 380;width: 140;"><xsl:value-of select="ideals" /></div>
				<div id="bonds" class="lvalue l3" style="top: 235; left: 380;width: 140;"><xsl:value-of select="bonds" /></div>
				<div id="flaws" class="lvalue l3" style="top: 285; left: 380;width: 140;"><xsl:value-of select="flaws" /></div>
				
				<!-- Features and Traits -->
				<div id="featurestraits" class="lvalue" style="top: 355; left: 380;width: 142; height: 330;">
				<xsl:for-each select="featurelist/*">
					<xsl:value-of select="name" /><br />
				</xsl:for-each>
				<xsl:for-each select="traitlist/*">
					<xsl:value-of select="name" /><br />
				</xsl:for-each>
				</div>
				
				
				<!-- Languages and Proficiencies -->
				<div id="languagesproficiencies" class="lvalue" style="top: 570; left: 32;width: 144; height: 120">
				<!-- languages -->
				<xsl:if test="count(languagelist/*) &gt; 0">
					Langagues. 
				</xsl:if>
				<xsl:for-each select="languagelist/*">
					<xsl:if test="(position() &gt; 1)">, </xsl:if>
					<xsl:value-of select="name" />
				</xsl:for-each>
				<xsl:if test="count(languagelist/*) &gt; 0">;<xsl:text> </xsl:text></xsl:if>
				<!-- Proficiency List -->
				<xsl:if test="count(languagelist/*) &gt; 0">
					<br />Proficiencies: 
				</xsl:if>
				<xsl:for-each select="proficiencylist/*">
					<xsl:if test="(position() &gt; 1)">, </xsl:if>
					<xsl:value-of select="name" />
				</xsl:for-each>
				<xsl:if test="count(proficiencylist/*) &gt; 0">;<xsl:text> </xsl:text></xsl:if>
				</div>
				
				<!-- Weapons and Attacks -->
				<div id="weapons" class="sheetDataXSmall" style="top: 355; left: 200;width: 160;">
				<table width="100%">
				<xsl:for-each select="weaponlist/*">
					<tr><td class="l0" style="width: 160;">
					 <div class="lvalue l0" style="left: 0; width: 60; position: relative; display: inline-block;"><xsl:value-of select="name" /></div>
					<!-- melee -->										
					<xsl:if test="type=0">
						<xsl:if test="prof &gt; 0">
                            <div class="value l0" style="width: 30; position: relative; display: inline-block;">+<xsl:value-of select="$strBonus + $profBonus + attackbonus" /></div>
                            <div class="value l0" style="width: 60; position: relative; display: inline-block;"><xsl:value-of select="damagelist/*[1]/dice" />+<xsl:value-of select="$strBonus" /></div>
						</xsl:if>
						<xsl:if test="prof &lt; 1">
                            <div class="value l0" style="width: 30; position: relative; display: inline-block;">+<xsl:value-of select="$strBonus + attackbonus" /></div>
                            <div class="value l0" style="width: 60; position: relative; display: inline-block;"><xsl:value-of select="damagelist/*[1]/dice" />+<xsl:value-of select="$strBonus" /></div>
						</xsl:if>
					</xsl:if>

					<!-- ranged -->
					<xsl:if test="type=1">
						<xsl:if test="prof &gt; 0">
							<div class="value l0" style="width: 30; position: relative; display: inline-block;">+<xsl:value-of select="$dexBonus + $profBonus + attackbonus" /></div>
							<div class="value l0" style="width: 60; position: relative; display: inline-block;"><xsl:value-of select="damagelist/*[1]/dice" /></div>
						</xsl:if>
						<xsl:if test="prof &lt; 1">
							<div class="value l0" style="width: 30; position: relative; display: inline-block;">+<xsl:value-of select="$dexBonus + attackbonus" /></div>
							<div class="value l0" style="width: 60; position: relative; display: inline-block;"><xsl:value-of select="damagelist/*[1]/dice" /></div>
						</xsl:if>					
					</xsl:if>
					
					<!-- thrown -->
					<xsl:if test="type=2">
						<xsl:if test="prof &gt; 0">
							<div class="value l0" style="width: 30; position: relative; display: inline-block;">+<xsl:value-of select="$strBonus + $profBonus + attackbonus" /></div>
							<div class="value l0" style="width: 60; position: relative; display: inline-block;"><xsl:value-of select="damagelist/*[1]/dice" />+<xsl:value-of select="$strBonus" /></div>
						</xsl:if>
						<xsl:if test="prof &lt; 1">
							<div class="value l0" style="width: 30; position: relative; display: inline-block;">+<xsl:value-of select="$strBonus + attackbonus" /></div>
							<div class="value l0" style="width: 60; position: relative; display: inline-block;"><xsl:value-of select="damagelist/*[1]/dice" />+<xsl:value-of select="$strBonus" /></div>
						</xsl:if>
					</xsl:if>
                        </td>
					</tr>
				</xsl:for-each>
				</table>
				</div>
				
				<!-- Equipment -->
				<div id="equipment" class="lvalue" style="top: 540; left: 250;width: 105; height: 150">
				<xsl:for-each select="inventorylist/*">
					<xsl:value-of select="name" /><xsl:if test="quantity &gt; 1">(<xsl:value-of select="count" />)</xsl:if>, 
				</xsl:for-each>
				</div>
				<!-- Coins -->
				<div id="cp" class="sheetDataXSmall" style="top: 545; left: 210;">
				<xsl:value-of select="coins/*[name='cp']/amount" />
				</div>
				<div id="sp" class="sheetDataXSmall" style="top: 570; left: 210;">
				<xsl:value-of select="coins/*[name='sp']/amount" />
				</div>
				<div id="ep" class="sheetDataXSmall" style="top: 593; left: 210;">
				<xsl:value-of select="coins/*[name='ep']/amount" />
				</div>
				<div id="gp" class="sheetDataXSmall" style="top: 616; left: 210;">
				<xsl:value-of select="coins/*[name='gp']/amount" />
				</div>
				<div id="pp" class="sheetDataXSmall" style="top: 640; left: 210;">
				<xsl:value-of select="coins/*[name='pp']/amount" />
				</div>
				
								
				
			</div>
			<div id="page1" class="page">
				<img class="pagebg" src='http://www.fantasygrounds.com/images/charsheets/DDALRoD_CharacterSheet_Page_2.jpg' style="position: absolute; top: 0; left: 0; z-index: -1;" />		
				
				<!-- Layout basic info -->
				<div id="namepg2" class="value l2" style="top: 63; left: 65; width: 104;"><xsl:value-of select="name" /></div>
				<!-- Top Line data -->
				<div id="agegender" class="lvalue l1" style="top: 38; left: 185; width: 78;"><xsl:value-of select="age" /> (<xsl:value-of select="gender" />)</div>
				<div id="height" class="lvalue l1" style="top: 38; left: 320;  width: 78;"><xsl:value-of select="height" /></div>
				<div id="weight" class="lvalue l1" style="top: 38; left: 430; width: 78;"><xsl:value-of select="weight" /></div>

			
			</div>
			<!-- End of Character -->
		</xsl:for-each>
     
    <script>
        textFit(document.getElementsByClassName('value'), {alignHoriz: true, alignVert: true});
        textFit(document.getElementsByClassName('lvalue'), {alignHoriz: false, alignVert: true});
        textFit(document.getElementsByClassName('attribute'), {alignHoriz: true, alignVert: true});
        textFit(document.getElementsByClassName('bonus'), {alignHoriz: true, alignVert: true});
    </script>     
      </body>
    </html>
  </xsl:template>
  
	<xsl:template name="checkboxes">
		<xsl:param name="index" />
		<xsl:param name="total" />
	
		<span style="font-family: times new roman;font-size: 8pt;"><input style="font-size: xx-small;" type="checkbox" /></span>
		
		<!-- Loop processing. Wish we could use XSLT 2.0 -->
		<xsl:if test="not($index = $total)">
			<xsl:call-template name="checkboxes">
				<xsl:with-param name="index" select="$index + 1" />
				<xsl:with-param name="total" select="$total" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
  
  
</xsl:stylesheet>