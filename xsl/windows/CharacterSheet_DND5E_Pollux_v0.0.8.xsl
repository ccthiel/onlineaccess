<!-- 
   XSL Stylesheet to convert Fantasy Grounds Characters into Printable HTML
   
   This is intended to be used with the Universal Character Sheet Printer:
   https://www.fantasygrounds.com/forums/showthread.php?27390-Universal-Character-Sheet-Printer-for-FG
   
   The sheet is adapted from the following plain HTML DnD 5e character sheet:
   https://www.reddit.com/r/dndnext/comments/6b8gv5/5e_character_sheet_with_pure_htmlcss/
   https://codepen.io/evertras/full/YVVeMd/
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://saxon.sf.net/" version="1.0">
   <xsl:output method="html" encoding="iso-8859-1" />
   <xsl:template match="/">
      <html lang="en">
         <head>
            <meta charset="UTF-8" />
            <link rel="apple-touch-icon" type="image/png" href="https://static.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png" />
            <meta name="apple-mobile-web-app-title" content="CodePen" />
            <link rel="shortcut icon" type="image/x-icon" href="https://static.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico" />
            <link rel="mask-icon" type="" href="https://static.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111" />
            <title>CodePen - A Pen by  Brandon Fulljames</title>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css" />
            <style>.red {
	  background: red;
	}

	.blue {
	  background: blue;
	}

	.hide {
	  display: none !important;
	}

	textarea {
	  font-size: 12px;
	  text-align: left;
	  width: calc(100% - 20px - 2px);
	  border-radius: 10px;
	  padding: 10px;
	  resize: none;
	  overflow: hidden;
	  height: 15em;
	}

	input[type="checkbox"] {
	  cursor: pointer;
	}

	div.box {
	  margin-top: 10px;
	}

	form.charsheet {
	  width: 800px;
	  right: 0;
	  left: 0;
	  margin-right: auto;
	  margin-left: auto;
	  margin-top: 10px;
	}
	form.charsheet div.textblock {
	  display: flex;
	  flex-direction: column-reverse;
	  width: 100%;
	  align-items: center;
	}
	form.charsheet div.textblock label {
	  text-align: center;
	  border: 1px solid black;
	  border-top: 0;
	  font-size: 10px;
	  width: calc(100% - 20px - 2px);
	  border-radius: 0 0 10px 10px;
	  padding: 4px 0;
	  font-weight: bold;
	}
	form.charsheet div.textblock textarea {
	  border: 1px solid black;
	}
	form.charsheet ul {
	  margin: 0;
	  padding: 0;
	}
	form.charsheet ul li {
	  list-style-image: none;
	  display: block;
	}
	form.charsheet ::-webkit-input-placeholder {
	  color: black;
	}
	form.charsheet :-ms-input-placeholder {
	  color: black;
	}
	form.charsheet ::-ms-input-placeholder {
	  color: black;
	}
	form.charsheet ::placeholder {
	  color: black;
	}
	form.charsheet label {
	  text-transform: uppercase;
	  font-size: 12px;
	}
	form.charsheet header {
	  display: flex;
	  align-contents: stretch;
	  align-items: stretch;
	}
	form.charsheet header section.charname {
	  border: 1px solid black;
	  border-right: 0;
	  border-radius: 10px 0 0 10px;
	  padding: 5px 0;
	  background-color: #eee;
	  width: 30%;
	  display: flex;
	  flex-direction: column-reverse;
	  bottom: 0;
	  top: 0;
	  margin: auto;
	}
	form.charsheet header section.charname input {
	  padding: 0.5em;
	  margin: 5px;
	  border: 0;
	}
	form.charsheet header section.charname label {
	  padding-left: 1em;
	}
	form.charsheet header section.misc {
	  width: 70%;
	  border: 1px solid black;
	  border-radius: 10px;
	  padding-left: 1em;
	  padding-right: 1em;
	}
	form.charsheet header section.misc ul {
	  padding: 10px 0px 5px 0px;
	  display: flex;
	  flex-wrap: wrap;
	}
	form.charsheet header section.misc ul li {
	  width: 33.33333%;
	  display: flex;
	  flex-direction: column-reverse;
	}
	form.charsheet header section.misc ul li label {
	  margin-bottom: 5px;
	}
	form.charsheet header section.misc ul li input {
	  border: 0;
	  border-bottom: 1px solid #ddd;
	}
	form.charsheet main {
	  display: flex;
	  justify-content: space-between;
	  margin-top: 20px;
	}
	form.charsheet main div.label-container {
	  position: relative;
	  width: 100%;
	  height: 18px;
	  margin-top: 6px;
	  border: 1px solid black;
	  border-left: 0;
	  text-align: center;
	}
	form.charsheet main div.label-container &gt; label {
	  position: absolute;
	  left: 0;
	  top: 1px;
	  -webkit-transform: translate(0%, 50%);
			  transform: translate(0%, 50%);
	  width: 100%;
	  font-size: 8px;
	}
	form.charsheet main &gt; section {
	  width: 32%;
	  display: flex;
	  flex-direction: column;
	}
	form.charsheet main &gt; section section.attributes {
	  width: 100%;
	  display: flex;
	  flex-direction: row;
	  justify-content: space-between;
	}
	form.charsheet main &gt; section section.attributes div.scores {
	  width: 101px;
	  background-color: #bbb;
	  border-radius: 10px;
	  padding-bottom: 5px;
	}
	form.charsheet main &gt; section section.attributes div.scores label {
	  font-size: 8px;
	  font-weight: bold;
	}
	form.charsheet main &gt; section section.attributes div.scores ul {
	  display: flex;
	  flex-direction: column;
	  justify-content: space-around;
	  align-items: center;
	  height: 100%;
	}
	form.charsheet main &gt; section section.attributes div.scores ul li {
	  height: 80px;
	  width: 70px;
	  background-color: white;
	  border: 1px solid black;
	  text-align: center;
	  display: flex;
	  flex-direction: column;
	  border-radius: 10px;
	}
	form.charsheet main &gt; section section.attributes div.scores ul li input {
	  width: 100%;
	  padding: 0;
	  border: 0;
	}
	form.charsheet main &gt; section section.attributes div.scores ul li div.score input {
	  text-align: center;
	  font-size: 40px;
	  padding: 2px 0px 0px 0px;
	  background: white;
	}
	form.charsheet main &gt; section section.attributes div.scores ul li div.modifier {
	  margin-top: 3px;
	}
	form.charsheet main &gt; section section.attributes div.scores ul li div.modifier input {
	  background: white;
	  width: 30px;
	  height: 20px;
	  border: 1px inset black;
	  border-radius: 20px;
	  margin: -1px;
	  text-align: center;
	}
	form.charsheet main &gt; section section.attributes div.attr-applications div.inspiration {
	  display: flex;
	  flex-direction: row-reverse;
	  justify-content: flex-end;
	}
	form.charsheet main &gt; section section.attributes div.attr-applications div.inspiration input {
	  -webkit-appearance: none;
		 -moz-appearance: none;
			  appearance: none;
	  border: 1px solid black;
	  padding: 15px;
	  border-radius: 10px;
	}
	form.charsheet main &gt; section section.attributes div.attr-applications div.proficiencybonus {
	  display: flex;
	  flex-direction: row-reverse;
	  justify-content: flex-end;
	}
	form.charsheet main &gt; section section.attributes div.attr-applications div.proficiencybonus input {
	  width: 30px;
	  height: 28px;
	  border: 1px solid black;
	  text-align: center;
	  border-radius: 10px;
	}
	ul#saves &gt; li &gt; label {
	  text-transform: capitalize;
	}
	form.charsheet main &gt; section section.attributes div.attr-applications div.list-section {
	  border: 1px solid black;
	  border-radius: 10px;
	  padding: 10px 5px;
	}
	form.charsheet main &gt; section section.attributes div.attr-applications div.list-section div.label {
	  margin-top: 10px;
	  margin-bottom: 2.5px;
	  text-align: center;
	  text-transform: uppercase;
	  font-size: 10px;
	  font-weight: bold;
	}
	form.charsheet main &gt; section section.attributes div.attr-applications div.list-section ul li {
	  display: flex;
	  align-items: center;
	}
	form.charsheet main &gt; section section.attributes div.attr-applications div.list-section ul li &gt; * {
	  margin-left: 5px;
	}
	form.charsheet main &gt; section section.attributes div.attr-applications div.list-section ul li label {
	  text-transform: none;
	  font-size: 8px;
	  text-align: left;
	  order: 3;
	}
	form.charsheet main &gt; section section.attributes div.attr-applications div.list-section ul li label span.skill {
	  color: #bbb;
	  text-transform: capitalize;
	}
	form.charsheet main &gt; section section.attributes div.attr-applications div.list-section ul li input[type="text"] {
	  width: 30px;
	  font-size: 12px;
	  text-align: center;
	  border: 0;
	  border-bottom: 1px solid black;
	  order: 2;
	}
	form.charsheet main &gt; section section.attributes div.attr-applications div.list-section ul li input[type="checkbox"] {
	  -webkit-appearance: none;
		 -moz-appearance: none;
			  appearance: none;
	  height: 10px;
	  width: 10px;
	  border: 1px solid black;
	  border-radius: 10px;
	  order: 1;
	}
	form.charsheet main &gt; section section.attributes div.attr-applications div.list-section ul li input.halfproficient[type="checkbox"] {
	  width: 5px;
	  border-radius: 10px;
	}
	form.charsheet main &gt; section section.attributes div.attr-applications div.list-section ul li input.expert[type="checkbox"] {
	  width: 10px;
	  border-radius: 0px;
	}
	form.charsheet main &gt; section section.attributes div.attr-applications div.list-section ul li input[type="checkbox"]:checked {
	  background-color: black;
	}
	form.charsheet main &gt; section div.passive-perception {
	  display: flex;
	  flex-direction: row-reverse;
	  justify-content: flex-end;
	}
	form.charsheet main &gt; section div.passive-perception input {
	  width: 30px;
	  height: 28px;
	  text-align: center;
	  border: 1px solid black;
	  border-radius: 10px;
	}
	
	form.charsheet main section.otherprofs {
	  border: 1px solid black;
	  border-radius: 10px;
	  margin-top: 10px;
	}
	form.charsheet main section.otherprofs &gt; div {
	  margin: 10px;
	  display: flex;
	  flex-direction: column-reverse;
	  text-align: center;
	}
	form.charsheet main section.otherprofs &gt; div &gt; div {
	  font-size: 12px;
	  text-align: left;
	}
	form.charsheet main section.otherprofs &gt; div ul {
	  margin-bottom: 10px;
	}
	form.charsheet main section.otherprofs &gt; div ul li {
	  margin-bottom: 5px;
	}

	form.charsheet main section.combat {
	  background-color: #eee;
	  display: flex;
	  flex-wrap: wrap;
	  border-radius: 10px;
	}
	form.charsheet main section.combat &gt; div {
	  overflow: hidden;
	}
	form.charsheet main section.combat &gt; div.armorclass, form.charsheet main section.combat &gt; div.initiative, form.charsheet main section.combat &gt; div.speed {
	  flex-basis: 33.333%;
	}
	form.charsheet main section.combat &gt; div.armorclass &gt; div, form.charsheet main section.combat &gt; div.initiative &gt; div, form.charsheet main section.combat &gt; div.speed &gt; div {
	  display: flex;
	  flex-direction: column-reverse;
	  align-items: center;
	  margin-top: 10px;
	}
	form.charsheet main section.combat &gt; div.armorclass &gt; div label, form.charsheet main section.combat &gt; div.initiative &gt; div label, form.charsheet main section.combat &gt; div.speed &gt; div label {
	  font-size: 8px;
	  width: 50px;
	  border: 1px solid black;
	  border-top: 0;
	  background-color: white;
	  text-align: center;
	  padding-top: 5px;
	  padding-bottom: 5px;
	  border-radius: 0 0 10px 10px;
	}
	form.charsheet main section.combat &gt; div.armorclass &gt; div input, form.charsheet main section.combat &gt; div.initiative &gt; div input, form.charsheet main section.combat &gt; div.speed &gt; div input {
	  height: 70px;
	  width: 70px;
	  border-radius: 10px;
	  border: 1px solid black;
	  text-align: center;
	  font-size: 30px;
	}
	form.charsheet main section.combat &gt; div.hp {
	  flex-basis: 100%;
	}
	form.charsheet main section.combat &gt; div.hp &gt; div.regular {
	  background-color: white;
	  border: 1px solid black;
	  margin: 10px;
	  margin-bottom: 5px;
	  border-radius: 10px 10px 0 0;
	}
	form.charsheet main section.combat &gt; div.hp &gt; div.regular &gt; div.max {
	  display: flex;
	  justify-content: space-around;
	  align-items: baseline;
	}
	form.charsheet main section.combat &gt; div.hp &gt; div.regular &gt; div.max label {
	  font-size: 10px;
	  text-transform: none;
	  color: #bbb;
	}
	form.charsheet main section.combat &gt; div.hp &gt; div.regular &gt; div.max input {
	  width: 40%;
	  border: 0;
	  border-bottom: 1px solid #ddd;
	  font-size: 12px;
	  text-align: center;
	}
	form.charsheet main section.combat &gt; div.hp &gt; div.regular &gt; div.current {
	  display: flex;
	  flex-direction: column-reverse;
	}
	form.charsheet main section.combat &gt; div.hp &gt; div.regular &gt; div.current input {
	  border: 0;
	  width: 100%;
	  padding: 1em 0;
	  font-size: 20px;
	  text-align: center;
	}
	form.charsheet main section.combat &gt; div.hp &gt; div.regular &gt; div.current label {
	  font-size: 10px;
	  padding-bottom: 5px;
	  text-align: center;
	  font-weight: bold;
	}
	form.charsheet main section.combat &gt; div.hp &gt; div.temporary {
	  margin: 10px;
	  margin-top: 0;
	  border: 1px solid black;
	  border-radius: 0 0 10px 10px;
	  display: flex;
	  flex-direction: column-reverse;
	  background-color: white;
	}
	form.charsheet main section.combat &gt; div.hp &gt; div.temporary input {
	  padding: 1em 0;
	  font-size: 20px;
	  border: 0;
	  text-align: center;
	}
	form.charsheet main section.combat &gt; div.hp &gt; div.temporary label {
	  font-size: 10px;
	  padding-bottom: 5px;
	  text-align: center;
	  font-weight: bold;
	}
	form.charsheet main section.combat &gt; div.hitdice, form.charsheet main section.combat &gt; div.deathsaves {
	  flex: 1 50%;
	  height: 100px;
	}
	form.charsheet main section.combat &gt; div.hitdice &gt; div, form.charsheet main section.combat &gt; div.deathsaves &gt; div {
	  height: 80px;
	}
	form.charsheet main section.combat &gt; div.hitdice &gt; div {
	  background-color: white;
	  margin: 10px;
	  border: 1px solid black;
	  border-radius: 10px;
	  display: flex;
	  flex-direction: column;
	}
	form.charsheet main section.combat &gt; div.hitdice &gt; div &gt; div.total {
	  display: flex;
	  align-items: baseline;
	  justify-content: space-around;
	  padding: 5px 0;
	}
	form.charsheet main section.combat &gt; div.hitdice &gt; div &gt; div.total label {
	  font-size: 10px;
	  color: #bbb;
	  margin: 0.25em;
	  text-transform: none;
	}
	form.charsheet main section.combat &gt; div.hitdice &gt; div &gt; div.total input {
	  font-size: 12px;
	  flex-grow: 1;
	  border: 0;
	  border-bottom: 1px solid #ddd;
	  width: 50%;
	  margin-right: 0.25em;
	  padding: 0 0.25em;
	  text-align: center;
	}
	form.charsheet main section.combat &gt; div.hitdice &gt; div &gt; div.remaining {
	  flex: 1;
	  display: flex;
	  flex-direction: column-reverse;
	  margin-top: 10px;
	  margin-left: 10px;
	  margin-right: 10px;
	}
	form.charsheet main section.combat &gt; div.hitdice &gt; div &gt; div.remaining &gt; div {
      height: 100%;
	}
	form.charsheet main section.combat &gt; div.hitdice &gt; div &gt; div.remaining label {
	  text-align: center;
	  padding: 2px;
	  font-size: 10px;
	}
	form.charsheet main section.combat &gt; div.hitdice &gt; div &gt; div.remaining input {
	  text-align: center;
	  border: 0;
	  flex: 1;
	}
	form.charsheet main section.combat &gt; div.deathsaves &gt; div {
	  margin: 10px;
	  background: white;
	  border: 1px solid black;
	  border-radius: 10px;
	  display: flex;
	  flex-direction: column-reverse;
	}
	form.charsheet main section.combat &gt; div.deathsaves &gt; div &gt; div.label {
	  text-align: center;
	}
	form.charsheet main section.combat &gt; div.deathsaves &gt; div &gt; div.label label {
	  font-size: 10px;
	}
	form.charsheet main section.combat &gt; div.deathsaves &gt; div &gt; div.marks {
	  display: flex;
	  flex: 1;
	  flex-direction: column;
	  justify-content: center;
	}
	form.charsheet main section.combat &gt; div.deathsaves &gt; div &gt; div.marks div.deathsuccesses, form.charsheet main section.combat &gt; div.deathsaves &gt; div &gt; div.marks div.deathfails {
	  display: flex;
	  align-items: center;
	}
	form.charsheet main section.combat &gt; div.deathsaves &gt; div &gt; div.marks div.deathsuccesses label, form.charsheet main section.combat &gt; div.deathsaves &gt; div &gt; div.marks div.deathfails label {
	  font-size: 8px;
	  text-align: right;
	  flex: 1 50%;
	}
	form.charsheet main section.combat &gt; div.deathsaves &gt; div div.bubbles {
	  flex: 1 40%;
	  margin-left: 5px;
	}
	form.charsheet main section.combat &gt; div.deathsaves &gt; div div.bubbles input[type="checkbox"] {
	  -webkit-appearance: none;
		 -moz-appearance: none;
			  appearance: none;
	  width: 10px;
	  height: 10px;
	  border: 1px solid black;
	  border-radius: 10px;
	}
	form.charsheet main section.combat &gt; div.deathsaves &gt; div div.bubbles input[type="checkbox"]:checked {
	  background-color: black;
	}
	form.charsheet main section.attacksandspellcasting {
	  border: 1px solid black;
	  border-radius: 10px;
	  margin-top: 10px;
	}
	form.charsheet main section.attacksandspellcasting &gt; div {
	  margin: 10px;
	  display: flex;
	  flex-direction: column;
	}
	form.charsheet main section.attacksandspellcasting &gt; div &gt; label {
	  order: 3;
	  text-align: center;
	}
	form.charsheet main section.attacksandspellcasting &gt; div &gt; table {
	  width: 100%;
	}
	form.charsheet main section.attacksandspellcasting &gt; div &gt; table th {
	  font-size: 10px;
	  color: #ddd;
	}
	form.charsheet main section.attacksandspellcasting &gt; div &gt; table input {
	  width: calc(100% - 4px);
	  border: 0;
	  background-color: #eee;
	  font-size: 10px;
	  padding: 3px;
	}
	form.charsheet main section.attacksandspellcasting &gt; div textarea {
	  border: 0;
	}
	form.charsheet main section.equipment {
	  border: 1px solid black;
	  border-radius: 10px;
	  margin-top: 10px;
	}
	form.charsheet main section.equipment &gt; div {
	  padding: 10px;
	  display: flex;
	  flex-direction: row;
	  flex-wrap: wrap;
	}
	form.charsheet main section.equipment &gt; div &gt; div.money ul {
	  display: flex;
	  flex-direction: column;
	  justify-content: space-between;
	  height: 100%;
	}
	form.charsheet main section.equipment &gt; div &gt; div.money ul &gt; li {
	  display: flex;
	  align-items: center;
	}
	form.charsheet main section.equipment &gt; div &gt; div.money ul &gt; li label {
	  border: 1px solid black;
	  border-radius: 10px 0 0 10px;
	  border-right: 0;
	  width: 20px;
	  font-size: 8px;
	  text-align: center;
	  padding: 3px 0;
	}
	form.charsheet main section.equipment &gt; div &gt; div.money ul &gt; li input {
	  border: 1px solid black;
	  border-radius: 10px;
	  width: 40px;
	  padding: 10px 3px;
	  font-size: 12px;
	  text-align: center;
	}
	form.charsheet main section.equipment &gt; div &gt; label {
	  order: 3;
	  text-align: center;
	  flex: 100%;
	}
	form.charsheet main section.equipment &gt; div &gt; textarea {
	  flex: 1;
	  border: 0;
	}
	form.charsheet main section.flavor {
	  padding: 10px;
	  background: #bbb;
	  border-radius: 10px;
	}
	form.charsheet main section.flavor div {
	  background: white;
	  display: flex;
	  flex-direction: column-reverse;
	  padding: 5px;
	  border: 1px solid black;
	}
	form.charsheet main section.flavor div label {
	  text-align: center;
	  font-size: 10px;
	  margin-top: 3px;
	}
	form.charsheet main section.flavor div textarea {
	  border: 0;
	  border-radius: 0;
	  height: 4em;
	}
	form.charsheet main section.flavor div:first-child {
	  border-radius: 10px 10px 0 0;
	}
	form.charsheet main section.flavor div:not(:first-child) {
	  margin-top: 10px;
	}
	form.charsheet main section.flavor div:last-child {
	  border-radius: 0 0 10px 10px;
	}
	form.charsheet main section.features {
	  padding: 10px;
	}
	form.charsheet main section.features div {
	  padding: 10px;
	  border: 1px solid black;
	  border-radius: 10px;
	  display: flex;
	  flex-direction: column-reverse;
	}
	form.charsheet main section.features div label {
	  text-align: center;
	}
	form.charsheet main section.features div textarea {
	  border: 0;
	  padding: 5px;
	  height: 43em;
	}</style>
            <script>window.console = window.console || function(t) {};</script>
            <script>if (document.location.search.match(/type=embed/gi)) {
		window.parent.postMessage("resize", "*");
	  }</script>
         </head>
         <body translate="no">
		    <xsl:for-each select="//character">
				<form class="charsheet">
				   <header>
					  <section class="charname">
						<label for="charname">Character Name</label>
						<input name="charname">
							<xsl:attribute name="placeholder">
								<xsl:value-of select="name" />
							</xsl:attribute>
						</input>
					  </section>
					  <section class="misc">
						 <ul>
							<li>
							   <label for="classlevel">Class &amp; Level</label>
							   <input name="classlevel">
									<xsl:attribute name="placeholder">										
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
									</xsl:attribute>
							   </input>
							</li>
							<li>
							   <label for="background">Background</label>
							   <input name="background">
									<xsl:attribute name="placeholder">
										<xsl:value-of select="background" />
									</xsl:attribute>
							   </input>
							</li>
							<li>
							   <label for="playername">Player Name</label>
							   <input name="playername" />
							</li>
							<li>
							   <label for="race">Race</label>
							   <input name="race">
									<xsl:attribute name="placeholder">
										<xsl:value-of select="race" />
									</xsl:attribute>
							   </input>
							</li>
							<li>
							   <label for="alignment">Alignment</label>
							   <input name="alignment">
									<xsl:attribute name="placeholder">
										<xsl:value-of select="alignment" />
									</xsl:attribute>
							   </input>
							</li>
							<li>
							   <label for="experiencepoints">Experience Points</label>
							   <input name="experiencepoints">
									<xsl:attribute name="placeholder">
										<xsl:value-of select="exp" />
									</xsl:attribute>
							   </input>
							</li>
						 </ul>
					  </section>
				   </header>
				   <main>
					  <section>
						 <section class="attributes">
							<div class="scores">
							   <ul>
							        <xsl:for-each select="abilities/*">
                                       <xsl:sort select="not(local-name()='strength')" />
                                       <xsl:sort select="not(local-name()='dexterity')" />
                                       <xsl:sort select="not(local-name()='constitution')" />
									   <xsl:sort select="not(local-name()='wisdom')" />
									   <xsl:sort select="not(local-name()='intelligence')" />
									   <xsl:sort select="not(local-name()='charisma')" />
									   <li>
									      <div class="score">
										     <label>
											    <xsl:attribute name="for">
										           <xsl:value-of select="concat(local-name(), 'score')" />
									            </xsl:attribute>
											    <xsl:value-of select="local-name()" />
										     </label>
										     <input>
											    <xsl:attribute name="name">
										           <xsl:value-of select="concat(local-name(), 'score')" />
									            </xsl:attribute>
										        <xsl:attribute name="placeholder">
										           <xsl:value-of select="score" />
									            </xsl:attribute>
                                             </input>
									      </div>
									      <div class="modifier">
										     <input>
											    <xsl:attribute name="name">
										           <xsl:value-of select="concat(local-name(), 'mod')" />
									            </xsl:attribute>
											    <xsl:attribute name="placeholder">
												   <xsl:if test="bonus &gt;= 0">+</xsl:if>
										           <xsl:value-of select="bonus" />
									            </xsl:attribute>
											 </input>
									      </div>
								       </li>
                                    </xsl:for-each>
							   </ul>
							</div>
							<div class="attr-applications">
							   <div class="inspiration box">
								  <div class="label-container">
									 <label for="inspiration">Inspiration</label>
								  </div>
								  <input name="inspiration" type="checkbox" />
							   </div>
							   <div class="proficiencybonus box">
								  <div class="label-container">
									 <label for="proficiencybonus">Proficiency Bonus</label>
								  </div>
								  <input name="proficiencybonus">
								     <xsl:attribute name="placeholder">
										<xsl:if test="profbonus >= 0">+</xsl:if><xsl:value-of select="profbonus" />
									</xsl:attribute>
								  </input>
							   </div>
							   <div class="saves list-section box">
								  <ul id="saves">
								     <xsl:for-each select="abilities/*">
                                       <xsl:sort select="not(local-name()='strength')" />
                                       <xsl:sort select="not(local-name()='dexterity')" />
                                       <xsl:sort select="not(local-name()='constitution')" />
									   <xsl:sort select="not(local-name()='wisdom')" />
									   <xsl:sort select="not(local-name()='intelligence')" />
									   <xsl:sort select="not(local-name()='charisma')" />
									   	 <li>
										    <label>
											   <xsl:attribute name="for">
										          <xsl:value-of select="concat(local-name(), '-save')" />
									           </xsl:attribute>
											   <xsl:value-of select="local-name()" />
											</label>
										    <input placeholder="+0" type="text">
											   <xsl:attribute name="name">
										          <xsl:value-of select="concat(local-name(), '-save')" />
									           </xsl:attribute>
											   <xsl:attribute name="placeholder">
												  <xsl:if test="save &gt;= 0">+</xsl:if>
										          <xsl:value-of select="save" />
									           </xsl:attribute>
											</input>
										    <input type="checkbox">
											   <xsl:attribute name="name">
										          <xsl:value-of select="concat(local-name(), '-save-prof')" />
									           </xsl:attribute>
											   <xsl:if test="saveprof = 1">
											      <xsl:attribute name="checked" />
											   </xsl:if>
											</input>
									     </li>
									 </xsl:for-each>
								  </ul>
								  <div class="label">Saving Throws</div>
							   </div>
							   <div class="skills list-section box">
								  <ul>
							        <xsl:for-each select="skilllist/*">
                                       <xsl:sort select="name" />
									   <li>
									      <label>
										     <xsl:attribute name="for">
										        <xsl:value-of select="name" />
									         </xsl:attribute>
											 <xsl:value-of select="name" />
											 <span class="skill">
											    <xsl:value-of select="concat(' (', substring(stat, 1, 3), ')')" />
											 </span>
										  </label>
										  <input type="text">
										     <xsl:attribute name="name">
										        <xsl:value-of select="name" />
									         </xsl:attribute>
											 <xsl:attribute name="placeholder">
										        <xsl:value-of select="total" />
									         </xsl:attribute>
										  </input>
										  <input type="checkbox">
										     <xsl:attribute name="name">
										        <xsl:value-of select="concat(name, '-prof')" />
									         </xsl:attribute>
											 <!-- Unskilled is prof = 0 and is the default style -->
											 <xsl:if test="prof = 1">
												<xsl:attribute name="checked" />
											 </xsl:if>
											 <xsl:if test="prof = 2">
											    <xsl:attribute name="class">
										           expert
									            </xsl:attribute>
												<xsl:attribute name="checked" />
											 </xsl:if>
											 <xsl:if test="prof = 3">
										        <xsl:attribute name="class">
										           halfproficient
									            </xsl:attribute>
												<xsl:attribute name="checked" />
										     </xsl:if>
										  </input>
									   </li>
									</xsl:for-each>
								  </ul>
								  <div class="label">Skills</div>
							   </div>
							</div>
						 </section>
						 <div class="passive-perception box">
							<div class="label-container">
							   <label for="passiveperception">Passive Wisdom (Perception)</label>
							</div>
							<input name="passiveperception">
							   <xsl:attribute name="placeholder">
							      <xsl:value-of select="perception" />
							   </xsl:attribute>
							</input>
						 </div>
						 <section class="otherprofs">
						    <div name="otherprofs">
							   <label for="otherprofs">Other Proficiencies &amp; Languages</label>
							   <div>
							      <!-- Language List -->
							      <xsl:if test="count(languagelist/*) &gt; 0">
								     <ul name="languages">
									 <label for="languages">Languages</label>
								     <xsl:for-each select="languagelist/*">
                                        <li><xsl:value-of select="name" /></li>
								     </xsl:for-each>
							         </ul>
				                  </xsl:if>
				               
							      <!-- Proficiency List -->
				                  <xsl:if test="count(languagelist/*) &gt; 0">
								     <ul name="proficiencies">
									 <label for="proficiencies">Proficiences</label>
				                     <xsl:for-each select="proficiencylist/*">
					                    <li><xsl:value-of select="name" /></li>
				                     </xsl:for-each>
								     </ul>
				                  </xsl:if>
							   </div>
							</div>
						 </section>
					  </section>
					  <section>
						 <section class="combat">
							<div class="armorclass">
							   <div>
								  <label for="ac">Armor Class</label>
								  <input name="ac" type="text">
								     <xsl:attribute name="placeholder">
									    <xsl:value-of select="defenses/ac/total" />
							         </xsl:attribute>
								  </input>
							   </div>
							</div>
							<div class="initiative">
							   <div>
								  <label for="initiative">Initiative</label>
								  <input name="initiative" type="text">
								     <xsl:attribute name="placeholder">
									    <xsl:if test="initiative/total >= 0">+</xsl:if><xsl:value-of select="initiative/total" />
									 </xsl:attribute>
								  </input>
							   </div>
							</div>
							<div class="speed">
							   <div>
								  <label for="speed">Speed</label>
								  <input name="speed" type="text">
								     <xsl:attribute name="placeholder">
									    <xsl:value-of select="speed/total" />
									 </xsl:attribute>
								  </input>
							   </div>
							</div>
							<div class="hp">
							   <div class="regular">
								  <div class="max">
									 <label for="maxhp">Hit Point Maximum</label>
									 <input name="maxhp" type="text" >
									    <xsl:attribute name="placeholder">
										   <xsl:value-of select="hp/total" />
										</xsl:attribute>
									 </input>
								  </div>
								  <div class="current">
									 <label for="currenthp">Current Hit Points</label>
									 <input name="currenthp" type="text">
									    <xsl:attribute name="placeholder">
										   <xsl:value-of select="hp/total - hp/wounds" />
										</xsl:attribute>
									 </input>
								  </div>
							   </div>
							   <div class="temporary">
								  <label for="temphp">Temporary Hit Points</label>
								  <input name="temphp" type="text">
								     <xsl:attribute name="placeholder">
										<xsl:value-of select="hp/temporary" />
								     </xsl:attribute>
								  </input>
							   </div>
							</div>
							<div class="hitdice">
							   <div>
								  <div class="remaining" name="remaininghd">
								     <label for="remaininghd">Hit Dice</label>
									 <div>
									    <xsl:for-each select="classes/*">
							               <xsl:value-of select="concat(hddie, ': ')" />
					                       <xsl:call-template name="hdcheckboxes">
						                      <xsl:with-param name="index" select="1" />
						                      <xsl:with-param name="total" select="level" />
					                       </xsl:call-template>
					                       <xsl:text> </xsl:text>
				                        </xsl:for-each>
									 </div>
								  </div>
							   </div>
							</div>
							<div class="deathsaves">
							   <div>
								  <div class="label">
									 <label>Death Saves</label>
								  </div>
								  <div class="marks">
									 <div class="deathsuccesses">
										<label>Successes</label>
										<div class="bubbles">
										   <input name="deathsuccess1" type="checkbox" />
										   <input name="deathsuccess2" type="checkbox" />
										   <input name="deathsuccess3" type="checkbox" />
										</div>
									 </div>
									 <div class="deathfails">
										<label>Failures</label>
										<div class="bubbles">
										   <input name="deathfail1" type="checkbox" />
										   <input name="deathfail2" type="checkbox" />
										   <input name="deathfail3" type="checkbox" />
										</div>
									 </div>
								  </div>
							   </div>
							</div>
						 </section>
						 <section class="attacksandspellcasting">
							<div>
							   <label>Attacks &amp; Spellcasting</label>
							   <table>
								  <thead>
									 <tr>
										<th>Name</th>
										<th>Atk Bonus</th>
										<th>Damage/Type</th>
									 </tr>
								  </thead>
								  <tbody>
									 <tr>
										<td>
										   <input name="atkname1" type="text" />
										</td>
										<td>
										   <input name="atkbonus1" type="text" />
										</td>
										<td>
										   <input name="atkdamage1" type="text" />
										</td>
									 </tr>
									 <tr>
										<td>
										   <input name="atkname2" type="text" />
										</td>
										<td>
										   <input name="atkbonus2" type="text" />
										</td>
										<td>
										   <input name="atkdamage2" type="text" />
										</td>
									 </tr>
									 <tr>
										<td>
										   <input name="atkname3" type="text" />
										</td>
										<td>
										   <input name="atkbonus3" type="text" />
										</td>
										<td>
										   <input name="atkdamage3" type="text" />
										</td>
									 </tr>
								  </tbody>
							   </table>
							   <textarea />
							</div>
						 </section>
						 <section class="equipment">
							<div>
							   <label>Equipment</label>
							   <div class="money">
								  <ul>
									 <li>
										<label for="cp">cp</label>
										<input name="cp" />
									 </li>
									 <li>
										<label for="sp">sp</label>
										<input name="sp" />
									 </li>
									 <li>
										<label for="ep">ep</label>
										<input name="ep" />
									 </li>
									 <li>
										<label for="gp">gp</label>
										<input name="gp" />
									 </li>
									 <li>
										<label for="pp">pp</label>
										<input name="pp" />
									 </li>
								  </ul>
							   </div>
							   <textarea placeholder="Equipment list here" />
							</div>
						 </section>
					  </section>
					  <section>
						 <section class="flavor">
							<div class="personality">
							   <label for="personality">Personality</label>
							   <textarea name="personality" />
							</div>
							<div class="ideals">
							   <label for="ideals">Ideals</label>
							   <textarea name="ideals" />
							</div>
							<div class="bonds">
							   <label for="bonds">Bonds</label>
							   <textarea name="bonds" />
							</div>
							<div class="flaws">
							   <label for="flaws">Flaws</label>
							   <textarea name="flaws" />
							</div>
						 </section>
						 <section class="features">
							<div>
							   <label for="features">Features &amp; Traits</label>
							   <textarea name="features" />
							</div>
						 </section>
					  </section>
				   </main>
				</form>
			</xsl:for-each>
         </body>
      </html>
   </xsl:template>
   
   <xsl:template name="hdcheckboxes">
      <xsl:param name="index" />
      <xsl:param name="total" />
      <input style="font-size: xx-small;" type="checkbox" />
      <xsl:if test="not($index = $total)">
         <xsl:call-template name="hdcheckboxes">
            <xsl:with-param name="index" select="$index + 1" />
            <xsl:with-param name="total" select="$total" />
         </xsl:call-template>
      </xsl:if>
   </xsl:template>
</xsl:stylesheet>

