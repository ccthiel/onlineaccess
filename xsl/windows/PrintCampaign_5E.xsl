<xsl:stylesheet version="3.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output
	method = "xml"
	encoding = "iso-8859-1"
/>
 
  <xsl:template match="/">
    <html>
      <head>
        <title>Fantasy Grounds Dungeons and Dragons Campaign Outline</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
       <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous" />
       <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Andada" />
       
        <script>
        $(document).ready(function()
        {
          $("tr:even").css({
            "background-color":"#dcdfe4"});
            
        $('body :not(script)').contents().filter(function() {
                   return this.nodeType === 3;
               }).replaceWith(function() {
                  return this.nodeValue.replace(/\\n/g,'<br />');
               });            
        });    
        
       
        </script>

        <style>
         @media print{      
              body { font-size: 9pt !important;}    
              @page { size: letter portrait !important; margin: 0.75cm !important; orphans:4 !important; widows:2 !important; }
                .story {
                 column-count: 2 !important;
                 column-gap: 1em !important;
                 }
                .token {
                    height: 25px !important;
                    }
                .treasure {
                    max-width: 380px !important;
                    width: 380px !important;
                }
                a.xref:after {
                  content: " (page " target-counter(attr(href, url), page) ")";
                }
               .frame {
                   padding-left: 10px !important;
                   padding-right: 10px !important;
                   padding-top: 2px !important;
                   padding-bottom: 2px !important;
                   margin-left: 10px !important;
                   margin-right: 10p !important;
                   margin-bottom: 5px !important;
                   background-color: f9f9fa;
                   border-left: 1px #c9ced3 solid;
                   border-right: 1px #c9ced3 solid;
               }     
                .npclist2 {
                width: 100% !important;
                display: flex !important;
                flex-direction: row !important;
                flex-wrap: column wrap !important;
                align-content: space-around !important;              
               }
               .itemlist {
                width: 100% !important;
                display: flex !important;
                flex-direction: row !important;
                flex-wrap: column wrap !important;
                align-content: space-around !important;                     
               }
               .npc {
                    flex: 1 1 160px !important;
                }               
               .npc>div {
                   flex-wrap: nowrap !important;
               }
               .line {
                    display: inline-grid !important;
                    width: 95% !important;
                    grid-template-columns: auto auto !important;
                }                
                .item {
                    flex: 1 1 160px !important;
                }
                .stat {
                    font-size: 8px !important;
                }
                .statHeader {
                    font-size: 8px !important;
                    font-weight: bold;
                }                
                .npcname {
                    font-size: 13px !important;
                    font-weight: bold;
                    color: #b5665d;
                    font-variant: small-caps;
                }
                .statHeader {
                    font-size: 11px !important;
                    font-weight: bold;
                    color: #b5665d;
                    font-variant: small-caps;
                }
               .itemname {
                    font-size: 13px !important;
               }            
              table, th, td {
                font-size: 8px !important;
              }                   
               
                h1 { font-family: Andada; font-size: 14px !important; font-style: normal; font-variant: normal; font-weight: 700; line-height: 15px !important; } 
                h3 { font-family: Andada; font-size: 13px; font-style: normal; font-variant: normal; font-weight: 700; line-height: 14px; } 
                p { font-family: Andada; font-size: 10px !important; font-style: normal !important; font-variant: normal; font-weight: 400 !important; line-height: 11px !important; } 
                blockquote { font-family: Andada; font-size: 12pt !important; font-style: normal; font-variant: normal; font-weight: 400; line-height: 13pt; } 
                pre { font-family: Andada; font-size: 10pt; font-style: normal; font-variant: normal; font-weight: 400; line-height: 11pt; }
            }                       
                                
         h1 { font-family: Andada; font-size: 14pt; font-style: normal; font-variant: normal; font-weight: 700; line-height: 15pt; } h3 { font-family: Andada; font-size: 13pt; font-style: normal; font-variant: normal; font-weight: 700; line-height: 14pt; } p { font-family: Andada; font-size: 10pt; font-style: normal; font-variant: normal; font-weight: 400; line-height: 11pt; } blockquote { font-family: Andada; font-size: 12pt; font-style: normal; font-variant: normal; font-weight: 400; line-height: 13pt; } pre { font-family: Andada; font-size: 10pt; font-style: normal; font-variant: normal; font-weight: 400; line-height: 11pt; }
                    
          body
          {
          background-color: #f1efed;
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
		  }
		  .pagebg {
		  }		  
		  .sheetData {
			position: absolute;
			font-size: medium;
		  }
		  .sheetDataBig {
			position: absolute; 
			font-size: x-large;
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
       .frame {
           padding-left: 10px;
           padding-right: 10px;
           padding-top: 5px;
           padding-bottom: 5px;
           margin-left: 10%;
           margin-right: 10%;
           margin-bottom: 5px;
           max-width: 80%;
           background-color: f9f9fa;
           border-left: 1px #c9ced3 solid;
           border-right: 1px #c9ced3 solid;
       }
       .full {
           width: 100%;
           max-width: 800px;
       }
       .npc {
           width: 90%;
           max-width: 430px;
           display: inline-block;
           border-top: 5px #cbb991 groove;
           border-bottom: 5px #cbb991 groove;
           background-color: #f7f5f0;
           padding-right: 10px;
           padding-left: 10px;
           margin-right: 10px;
           margin-left: 10px;
           margin-top: 10px;
           margin-bottom: 10px;
       }

       .treasure {
           width: 90%;
           max-width: 430px;
           display: inline-block;
           border: 5px #cbb991 groove;
           background-color: #ebecee;
           padding-right: 10px;
           padding-left: 10px;
           margin-right: 10px;
           margin-left: 10px;
           margin-top: 10px;
           margin-bottom: 10px;       
           border-radius: 15px;         
       }
       .item {
           width: 90%;
           max-width: 430px;
           display: inline-block;
           border: 5px #cbb991 groove;
           background-color: #ebecee;
           padding-right: 10px;
           padding-left: 10px;
           margin-right: 10px;
           margin-left: 10px;
           margin-top: 10px;
           margin-bottom: 10px;       
           border-radius: 15px;           
       }
       .itemname {
            font-size: large;
            font-weight: bold;
            color: #b5665d;     
            font-variant: small-caps;  
       }
       .label {
           font-weight: bold;
        }
        .left {
            float: left;
            padding-right: 5px;
        }
        .stat {
            display: inline-block;
        }
        .npcname {
            font-size: x-large;
            font-weight: bold;
            color: #b5665d;
            font-variant: small-caps;
        }
        .npctype {
            font-weight: semi-bold;
            font-style: italic;
        }
        .statHeader {
            font-size: larger;
            font-weight: bold;
            color: #b5665d;
            font-variant: small-caps;
        }
        h1 {
            color: #b5665d;
            font-variant: small-caps;
        }
        hr {
            color: #b5665d;
            text-align: center;
            width: 90%;
        }
     
        .token {
            height: 50px;
        }
        .tokenlist {
            max-width: 200px;
            margin-right: 10px;
            padding-right: 10px;
        }
        .tokenlink {
            display: inline-block;
        }
        .encounter {
           margin: 5px;           
           padding-left: 10px;
           padding-right: 10px;
           padding-top: 0px;
           padding-bottom: 10px;
           border: 1px #cbb991 solid;
           border-radius: 15px;
           background-color: #f7f5f0;     
           max-width: 450px;      

        }
        .itemlist {
            width: 100%;
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            align-content: stretch;        
        }
        .npclist2 {
            width: 100%;
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            align-content: stretch;            
        }
        .npclist {          
          display: grid;
          grid-template-columns: repeat(auto-fill,minmax(160px, 1fr));          
          }
        .npclist div {
        }
        .encounter h1 {
             flex-basis: 100%;
             align-self: flex-start;
             width: 100%;             
         }
         .story {
            margin-bottom: 10px;
            }
         .line {
             width: 100%;
         }

.speech-bubble-ds {
    background: #efefef;
    border: 1px solid #a7a7a7;
    -webkit-border-radius: 4px;
            border-radius: 4px;
    -webkit-box-shadow: 4px 4px 0 rgba(0, 0, 0, 0.2);
            box-shadow: 4px 4px 0 rgba(0, 0, 0, 0.2);
    font-size: 1.2rem;
    line-height: 1.3;
    margin: 0 auto 40px;
    max-width: 400px;
    padding: 15px;
    position: relative;
}

.speech-bubble-ds p {
    margin-bottom: 10px;
}
.speech-bubble-ds p:last-of-type {
    margin-bottom: 0;
}

.speech-bubble-ds-arrow {
	content: '';
	position: absolute;
	left: 0;
	top: 50%;
	width: 0;
	height: 0;
	border: 20px solid transparent;
	border-right-color: #a7a7a7;
	border-left: 0;
	border-top: 0;
	margin-top: -10px;
	margin-left: -20px;
}
        </style>
  <!-- <link rel="StyleSheet" href="DnD4ev1-MeepoSose-Custom.css" type="text/css" />
      -->
	  </head>
      <body>		
        <xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
        <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
        <xsl:choose>
            <xsl:when test="//encounter/category">
                <xsl:apply-templates select="//encounter/category[@name != 'Ignore']" />        
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="//encounter" />
            </xsl:otherwise>
        </xsl:choose>        
                
        <a name="npcs" />
        <h1>APPENDIX - NPCs</h1>
        <xsl:choose>
            <xsl:when test="//npc/category">
                <xsl:apply-templates select="//npc/category[@name != 'Ignore']" />     
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="//npc" />
            </xsl:otherwise>
        </xsl:choose>                
        
                
        <a name="items" />
        <h1>APPENDIX - ITEMS</h1>
        <xsl:choose>
            <xsl:when test="//item/category">
                <xsl:apply-templates select="//item/category[@name != 'Ignore']" />     
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="//item" />
            </xsl:otherwise>
        </xsl:choose>            
               
        <div id="FGCredits" style="page-break-before: always; text-align: center;">
           <img src="https://www.fantasygrounds.com/img/FGlogo600.png" alt="Fantasy Grounds Logo" style="width: 400px;"/>
            <p>This campaign was created within the Fantasy Grounds virtual tabletop and printed using the FGPrintTool program provided by SmiteWorks USA LLC (SMITEWORKS). You are free to use this output for private non-commercial use. You may distribute this output as part of a Publisher Agreement with SMITEWORKS or through DMs Guild with the option checked to list the product as a Fantasy Grounds product. You are solely responsible for attaining any legal rights necessary to reproduce and distribute the contents produced herein. SMITEWORKS does not grant you ownership or rights to any content for which you do not otherwise already own the copyright.</p>
            <p>Visit <a href="https://www.fantasygrounds.com/?referer=FGPrintTool" target="_blank" alt="Fantasy Grounds website">www.fantasygrounds.com</a> to find out more about our virtual tabletop and campaign management tool.</p>
            <p>Fantasy Grounds is copyright SmiteWorks USA LLC, 2004-2019. All Rights Reserved.</p>
            <p>Contact us at support@fantasygrounds.com with any questions or for support requests. The forum is also a great resource to get questions answered quickly or to find groups of players and gamemasters you can join.</p>
        </div>
                
      </body>
    </html>
  </xsl:template>
  <xsl:key name="imagelist" match="//image/*/*" use="name()"/>
  <xsl:key name="npclist" match="//npc/*/*" use="name()"/>
  <xsl:key name="battlelist" match="//battle/*/*" use="name()"/>
  <xsl:key name="randombattlelist" match="//battlerandom/*" use="name()"/>
  <xsl:key name="itemlist" match="//item/*/*" use="name()"/>
  <xsl:key name="treasurelist" match="//treasureparcels/*/*" use="name()"/>    


            
    <xsl:template match="//encounter/category">
        <div class="page">
            <xsl:for-each select="./*">
                <div class="story">
                <a>
                    <xsl:attribute name="name">
                        <xsl:value-of select="name()" />
                    </xsl:attribute>
                </a>                            
                <h1><xsl:value-of select="./name" /></h1>
                <xsl:apply-templates select="text" />
                </div> 
            </xsl:for-each>				
        </div>    
    </xsl:template>      

    <xsl:template match="//encounter">
        <div class="page">
            <xsl:for-each select="./*">
                <div class="story">
                <a>
                    <xsl:attribute name="name">
                        <xsl:value-of select="name()" />
                    </xsl:attribute>
                </a>                            
                <h1><xsl:value-of select="./name" /></h1>
                <xsl:apply-templates select="text" />
                </div> 
            </xsl:for-each>				
        </div>    
    </xsl:template>     
        
    <xsl:template match="//item/category">
       <div class="itemlist">
        <xsl:for-each select="*">
           <a>
                <xsl:attribute name="name"><xsl:text>item_</xsl:text><xsl:value-of select="name()" /></xsl:attribute>
           </a>            
           <div class="item">
               <div class="itemname"><xsl:value-of select="name" /></div>
               <div class="itemtype"><xsl:value-of select="type" /> <xsl:if test="subtype &gt; ''"> (<xsl:value-of select="subtype" />)</xsl:if><xsl:if test="rarity &gt; ''">, <xsl:value-of select="rarity" /></xsl:if></div>
               <xsl:apply-templates select="description" />
               <xsl:if test="weight &gt; 0">
                   <div class="label">Weight</div> <div class="stat"><xsl:value-of select="weight" /></div>
               </xsl:if>
               <xsl:if test="cost &gt; 0">
                   <div class="label">Cost</div> <div class="stat"><xsl:value-of select="cost" /></div>
               </xsl:if>
               <xsl:if test="damage &gt; ''">
                   <div class="label">Damage</div> <div class="stat"><xsl:value-of select="damage" /></div>
               </xsl:if>
               <xsl:if test="properties &gt; ''">
                   <div class="label">Properties</div> <div class="stat"><xsl:value-of select="properties" /></div>
               </xsl:if>
           </div>
        </xsl:for-each>
        </div>
    </xsl:template>

<xsl:template match="//npc">
     <div class="npclist2">
      <xsl:for-each select="*">
           <a>
                <xsl:attribute name="name"><xsl:text>npc_</xsl:text><xsl:value-of select="name()" /></xsl:attribute>
           </a>
           <div class="npc">
                <div class="npcname"><xsl:value-of select="name" /></div>
                <div class="npctype"><xsl:value-of select="size" /><xsl:text> </xsl:text><xsl:value-of select="type" />, <xsl:value-of select="alignment" /></div>
                <hr/>
                <div class="line"><div class="label left">Armor Class</div> <div class="stat"><xsl:value-of select="ac" /> <xsl:value-of select="actext" /></div></div>
                <div class="line"><div class="label left">Hit Points</div> <div class="stat"><xsl:value-of select="hp" /> <xsl:value-of select="hd" /></div></div>
                <div class="line"><div class="label left">Speed</div> <div class="stat"><xsl:value-of select="speed" /></div></div>
                <hr/>
                <table style="table-layout: fixed; width: 80%;">
                    <tr>
                        <td class="label">STR</td>
                        <td class="label">DEX</td>
                        <td class="label">CON</td>
                        <td class="label">INT</td>
                        <td class="label">WIS</td>
                        <td class="label">CHA</td>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="abilities/strength/score" /> (<xsl:value-of select="abilities/strength/bonus" />)</td>
                        <td><xsl:value-of select="abilities/dexterity/score" /> (<xsl:value-of select="abilities/dexterity/bonus" />)</td>
                        <td><xsl:value-of select="abilities/constitution/score" /> (<xsl:value-of select="abilities/constitution/bonus" />)</td>
                        <td><xsl:value-of select="abilities/intelligence/score" /> (<xsl:value-of select="abilities/intelligence/bonus" />)</td>
                        <td><xsl:value-of select="abilities/wisdom/score" /> (<xsl:value-of select="abilities/wisdom/bonus" />)</td>
                        <td><xsl:value-of select="abilities/charisma/score" /> (<xsl:value-of select="abilities/charisma/bonus" />)</td>                        
                    </tr>
                </table>
                <hr/>
                <div class="line"><div class="label left">Saving Throws</div> <div class="stat"><xsl:value-of select="savingthrows" /></div></div>
                <div class="line"><div class="label left">Skills</div> <div class="stat"><xsl:value-of select="skills" /></div></div>
                <div class="line"><div class="label left">Senses</div> <div class="stat"><xsl:value-of select="senses" /></div></div>
                <div class="line"><div class="label left">Languages</div> <div class="stat"><xsl:value-of select="languages" /></div></div>
                <div class="line"><div class="label left">Challenge</div> <div class="stat"><xsl:value-of select="cr" /></div></div>
                <hr/>
                <xsl:if test="traits/*">
                    <div class="statHeader">Traits</div>
                    <xsl:for-each select="traits/*">
                        <p>
                        <b><xsl:value-of select="name" /></b>. <xsl:value-of select="desc" />
                        </p>
                    </xsl:for-each>                    
                </xsl:if>
                <div class="statHeader">Actions</div>
                <xsl:for-each select="actions/*">
                    <p>
                    <b><xsl:value-of select="name" /></b>. <xsl:value-of select="desc" />
                    </p>
                </xsl:for-each>
                <xsl:if test="reactions/*">
                <div class="statHeader">Reactions</div>
                    <xsl:for-each select="reactions/*">
                       <p>
                        <b><xsl:value-of select="name" /></b>. <xsl:value-of select="desc" />
                        </p>
                    </xsl:for-each>                    
                </xsl:if>
                <xsl:if test="lairactions/*">
                <div class="statHeader">Lair Actions</div>
                    <xsl:for-each select="lairactions/*">
                       <p>
                        <b><xsl:value-of select="name" /></b>. <xsl:value-of select="desc" />
                        </p>
                    </xsl:for-each>                    
                </xsl:if>            
                <xsl:if test="legendaryactions/*">
                <div class="statHeader">Legendary Actions</div>
                    <xsl:for-each select="legendaryactions/*">
                       <p>
                        <b><xsl:value-of select="name" /></b>. <xsl:value-of select="desc" />
                        </p>
                    </xsl:for-each>                    
                </xsl:if>                    
                <hr/>
                <xsl:apply-templates select="text" />
           </div>          
      </xsl:for-each>      
      </div>  
    </xsl:template>        
    
    <xsl:template match="//npc/category">
<div class="npclist2">
      <xsl:for-each select="*">
           <a>
                <xsl:attribute name="name"><xsl:text>npc_</xsl:text><xsl:value-of select="name()" /></xsl:attribute>
           </a>
           <div class="npc">
                <div class="npcname"><xsl:value-of select="name" /></div>
                <div class="npctype"><xsl:value-of select="size" /><xsl:text> </xsl:text><xsl:value-of select="type" />, <xsl:value-of select="alignment" /></div>
                <hr/>
                <div class="line"><div class="label left">Armor Class</div> <div class="stat"><xsl:value-of select="ac" /> <xsl:value-of select="actext" /></div></div>
                <div class="line"><div class="label left">Hit Points</div> <div class="stat"><xsl:value-of select="hp" /> <xsl:value-of select="hd" /></div></div>
                <div class="line"><div class="label left">Speed</div> <div class="stat"><xsl:value-of select="speed" /></div></div>
                <hr/>
                <table style="table-layout: fixed; width: 80%;">
                    <tr>
                        <td class="label">STR</td>
                        <td class="label">DEX</td>
                        <td class="label">CON</td>
                        <td class="label">INT</td>
                        <td class="label">WIS</td>
                        <td class="label">CHA</td>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="abilities/strength/score" /> (<xsl:value-of select="abilities/strength/bonus" />)</td>
                        <td><xsl:value-of select="abilities/dexterity/score" /> (<xsl:value-of select="abilities/dexterity/bonus" />)</td>
                        <td><xsl:value-of select="abilities/constitution/score" /> (<xsl:value-of select="abilities/constitution/bonus" />)</td>
                        <td><xsl:value-of select="abilities/intelligence/score" /> (<xsl:value-of select="abilities/intelligence/bonus" />)</td>
                        <td><xsl:value-of select="abilities/wisdom/score" /> (<xsl:value-of select="abilities/wisdom/bonus" />)</td>
                        <td><xsl:value-of select="abilities/charisma/score" /> (<xsl:value-of select="abilities/charisma/bonus" />)</td>                        
                    </tr>
                </table>
                <hr/>
                <div class="line"><div class="label left">Saving Throws</div> <div class="stat"><xsl:value-of select="savingthrows" /></div></div>
                <div class="line"><div class="label left">Skills</div> <div class="stat"><xsl:value-of select="skills" /></div></div>
                <div class="line"><div class="label left">Senses</div> <div class="stat"><xsl:value-of select="senses" /></div></div>
                <div class="line"><div class="label left">Languages</div> <div class="stat"><xsl:value-of select="languages" /></div></div>
                <div class="line"><div class="label left">Challenge</div> <div class="stat"><xsl:value-of select="cr" /></div></div>
                <hr/>
                <xsl:if test="traits/*">
                    <div class="statHeader">Traits</div>
                    <xsl:for-each select="traits/*">
                        <p>
                        <b><xsl:value-of select="name" /></b>. <xsl:value-of select="desc" />
                        </p>
                    </xsl:for-each>                    
                </xsl:if>
                <div class="statHeader">Actions</div>
                <xsl:for-each select="actions/*">
                    <p>
                    <b><xsl:value-of select="name" /></b>. <xsl:value-of select="desc" />
                    </p>
                </xsl:for-each>
                <xsl:if test="reactions/*">
                <div class="statHeader">Reactions</div>
                    <xsl:for-each select="reactions/*">
                       <p>
                        <b><xsl:value-of select="name" /></b>. <xsl:value-of select="desc" />
                        </p>
                    </xsl:for-each>                    
                </xsl:if>
                <xsl:if test="lairactions/*">
                <div class="statHeader">Lair Actions</div>
                    <xsl:for-each select="lairactions/*">
                       <p>
                        <b><xsl:value-of select="name" /></b>. <xsl:value-of select="desc" />
                        </p>
                    </xsl:for-each>                    
                </xsl:if>            
                <xsl:if test="legendaryactions/*">
                <div class="statHeader">Legendary Actions</div>
                    <xsl:for-each select="legendaryactions/*">
                       <p>
                        <b><xsl:value-of select="name" /></b>. <xsl:value-of select="desc" />
                        </p>
                    </xsl:for-each>                    
                </xsl:if>                    
                <hr/>
                <xsl:apply-templates select="text" />
           </div>          
      </xsl:for-each>      
      </div>
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

    <xsl:template match="h">
        <h1>
            <xsl:apply-templates select="*" />
        </h1>
    </xsl:template>
    
    <xsl:template match="list">
        <ul>
            <xsl:apply-templates select="*" />
        </ul>
    </xsl:template>
    
    <xsl:template match="linklist">
       <xsl:for-each select="link[@class='imagewindow']">
           <xsl:call-template name="show_image">
               <xsl:with-param name="xpath" select="substring-after(./@recordname,'image.')" />
           </xsl:call-template>
       </xsl:for-each>       
        <ul>
           <xsl:for-each select="link[@class='npc']">
           <li>
            <a class="xref" href="{concat('#npc_',substring-after(./@recordname,'npc.'))}" >
              <xsl:value-of select="." />
            </a>
           </li>
           </xsl:for-each>
           <xsl:for-each select="link[@class='item']">
           <li>
            <a class="xref" href="{concat('#item_',substring-after(./@recordname,'item.'))}" >
              <xsl:value-of select="." />
            </a>
           </li>
           </xsl:for-each>           
           <xsl:for-each select="link[@class='encounter']">
           <li>
            <a class='xref' href="{concat('#',substring-after(./@recordname,'encounter.'))}" >
              <xsl:value-of select="." />
            </a>
           </li>
           </xsl:for-each>
        </ul>
       <xsl:for-each select="link[@class='battle']">
           <xsl:call-template name="show_battle">
               <xsl:with-param name="xpath2" select="substring-after(./@recordname,'battle.')" />
           </xsl:call-template>
       </xsl:for-each>
       <xsl:for-each select="link[@class='battlerandom']">
           <xsl:call-template name="show_battlerandom">
               <xsl:with-param name="xpath4" select="substring-after(./@recordname,'battlerandom.')" />
           </xsl:call-template>
       </xsl:for-each>        
       <xsl:for-each select="link[@class='treasureparcel']">
          <div class="treasure">
              <h4><i class='fas fa-coins' ></i> Treasure: <xsl:value-of select="." /></h4>
             <xsl:call-template name="show_treasure">
                   <xsl:with-param name="xpath" select="substring-after(./@recordname,'treasureparcels.')" />
             </xsl:call-template>
          </div>    
       </xsl:for-each>       
    </xsl:template>
    
   <xsl:template name="show_image" >
       <xsl:param name="xpath" />  
       <div class="full">
       <xsl:for-each select="key('imagelist',$xpath)">
           <img style="max-width: 100%;">
               <xsl:attribute name="src">
                   <xsl:value-of select="image/bitmap" />
               </xsl:attribute>
           </img>      
           <p><b><xsl:value-of select="name" /></b></p>     
       </xsl:for-each>
       </div>
   </xsl:template>
   
    <xsl:template name="show_treasure" >
       <xsl:param name="xpath" />  
       <xsl:for-each select="key('treasurelist',$xpath)">         
         <ul>
          <xsl:for-each select="coinlist/*">
            <xsl:if test="amount &gt; 0">
               <li><xsl:value-of select="amount" /><xsl:text> </xsl:text><xsl:value-of select="description" /></li>
            </xsl:if>
          </xsl:for-each> 
          <xsl:for-each select="itemlist/*">
           <li>
            <xsl:value-of select="name" /> <xsl:if test="count &gt; 0">(<xsl:value-of select="count" />)</xsl:if>            
            <xsl:if test="cost">, cost: <xsl:value-of select="cost" /> each</xsl:if>
            </li>
          </xsl:for-each> 
          </ul>
       </xsl:for-each>
   </xsl:template>      
   
    <xsl:template name="show_battle" >
       <xsl:param name="xpath2" />  
       <div class="encounter">
       <xsl:for-each select="key('battlelist',$xpath2)">
        
         <h4>Encounter<xsl:if test="cr &gt; 0">
             - CR <xsl:value-of select="cr" /> (<xsl:value-of select="exp" /> XP)
        </xsl:if></h4>
         <div class="npclist">
          <xsl:for-each select="npclist/*">
            <xsl:variable name="tokencount" select="count" />
            <span>
            <div class="tokenlist">                               
                <xsl:for-each select="maplink/*">
                      <xsl:choose>
                        <xsl:when test="starts-with(./../../token,'campaign/')">
                            <xsl:comment>allow for tokens from local campaign folder</xsl:comment>
                            <xsl:call-template name="show_token">
                               <xsl:with-param name="xpath3" select="substring-after(./../../token,'campaign/')" />                               
                            </xsl:call-template>   
                        </xsl:when>
                        <xsl:when test="'@Character Pogs' = substring(./../../token, string-length(./../../token) - string-length('@Character Pogs') +1)">
                            <xsl:comment>allow for tokens using built-in character pogs -- but source from fantasygrounds website</xsl:comment>
                            <xsl:call-template name="show_token">
                               <xsl:with-param name="tokenOverride" select="concat('characters/',substring-before(substring-after(./../../token,'tokens/'),'.png@Character Pogs'))" />                          
                            </xsl:call-template>                               
                        </xsl:when>
                        <xsl:when test="'@Character Tokens' = substring(./../../token, string-length(./../../token) - string-length('@Character Tokens') +1)">
                            <xsl:comment>allow for tokens using built-in character pogs -- but source from fantasygrounds website</xsl:comment>
                            <xsl:call-template name="show_token">
                               <xsl:with-param name="tokenOverride" select="concat('characters/',substring-before(substring-after(./../../token,'tokens/'),'.png@Character Tokens'))" />                          
                            </xsl:call-template>                               
                        </xsl:when>
                        <xsl:when test="'@Monster Tokens' = substring(./../../token, string-length(./../../token) - string-length('@Monster Tokens') +1)">
                            <xsl:comment>allow for tokens using built-in monster pogs -- but source from fantasygrounds website</xsl:comment>
                            <xsl:call-template name="show_token">
                               <xsl:with-param name="tokenOverride" select="concat('monsters/',substring-before(substring-after(./../../token,'tokens/'),'.png@Monster Tokens'))" />                          
                            </xsl:call-template>                               
                        </xsl:when>
                        <xsl:when test="'@Monster Pogs' = substring(./../../token, string-length(./../../token) - string-length('@Monster Pogs') +1)">
                            <xsl:comment>allow for tokens using built-in monster pogs -- but source from fantasygrounds website</xsl:comment>
                            <xsl:call-template name="show_token">
                               <xsl:with-param name="tokenOverride" select="concat('monsters/',substring-before(substring-after(./../../token,'tokens/'),'.png@Monster Pogs'))" />                          
                            </xsl:call-template>                               
                        </xsl:when>
                        <xsl:when test="'@Animal Pogs' = substring(./../../token, string-length(./../../token) - string-length('@Animal Pogs') +1)">
                            <xsl:comment>allow for tokens using built-in animal pogs -- but source from fantasygrounds website</xsl:comment>
                            <xsl:call-template name="show_token">
                               <xsl:with-param name="tokenOverride" select="concat('animals/',substring-before(substring-after(./../../token,'tokens/'),'.png@Animal Pogs'))" />                          
                            </xsl:call-template>                               
                        </xsl:when>                                                
                        <xsl:when test="'@Animal Tokens' = substring(./../../token, string-length(./../../token) - string-length('@Animal Tokens') +1)">
                            <xsl:comment>allow for tokens using built-in animal pogs -- but source from fantasygrounds website</xsl:comment>
                            <xsl:call-template name="show_token">
                               <xsl:with-param name="tokenOverride" select="concat('animals/',substring-before(substring-after(./../../token,'tokens/'),'.png@Animal Tokens'))" />                          
                            </xsl:call-template>                               
                        </xsl:when>                                                               <xsl:otherwise>
                           <xsl:comment>otherwise use the first initial of the NPC name and source the letter PNG from fantasygrounds.com</xsl:comment>
                            <xsl:call-template name="show_token">
                               <xsl:with-param name="tokenOverride" select="substring(./../../name,1,1)" />
                            </xsl:call-template>   
                        </xsl:otherwise>
                       </xsl:choose>                            
                </xsl:for-each>        
            </div>    
            <a class="xref">
              <xsl:attribute name="href">
                  <xsl:value-of select="concat('#npc_',substring-after(link/recordname,'npc.'))" />
              </xsl:attribute>
               <xsl:value-of select="name" /> (<xsl:value-of select="count" />)                
            </a><br/>
            </span>
          </xsl:for-each>  
          </div>
       </xsl:for-each>
       </div>
   </xsl:template>   
      
    <xsl:template name="show_battlerandom" >
       <xsl:param name="xpath4" />  
       <div class="encounter">
       <xsl:for-each select="key('randombattlelist',$xpath4)">
        
         <h4>Random Encounter<xsl:if test="cr &gt; 0">
             - CR <xsl:value-of select="cr" /> (<xsl:value-of select="exp" /> XP)
        </xsl:if></h4>
        <div class="npclist">
          <xsl:for-each select="npclist/*">
            <span>         
            <xsl:variable name="tokencount" select="expr" />
            <div class="tokenlist">         
                      <xsl:choose>
                        <xsl:when test="starts-with(token,'campaign/')">
                            <xsl:comment>allow for tokens from local campaign folder</xsl:comment>
                            <xsl:call-template name="show_token">
                               <xsl:with-param name="xpath3" select="substring-after(token,'campaign/')" />                               
                            </xsl:call-template>   
                        </xsl:when>
                        <xsl:when test="'@Character Pogs' = substring(token, string-length(token) - string-length('@Character Pogs') +1)">
                            <xsl:comment>allow for tokens using built-in character pogs -- but source from fantasygrounds website</xsl:comment>
                            <xsl:call-template name="show_token">
                               <xsl:with-param name="tokenOverride" select="concat('characters/',substring-before(substring-after(token,'tokens/'),'.png@Character Pogs'))" />                          
                            </xsl:call-template>                               
                        </xsl:when>
                        <xsl:when test="'@Character Tokens' = substring(token, string-length(token) - string-length('@Character Tokens') +1)">
                            <xsl:comment>allow for tokens using built-in character pogs -- but source from fantasygrounds website</xsl:comment>
                            <xsl:call-template name="show_token">
                               <xsl:with-param name="tokenOverride" select="concat('characters/',substring-before(substring-after(token,'tokens/'),'.png@Character Tokens'))" />                          
                            </xsl:call-template>                               
                        </xsl:when>
                        <xsl:when test="'@Monster Tokens' = substring(token, string-length(token) - string-length('@Monster Tokens') +1)">
                            <xsl:comment>allow for tokens using built-in monster pogs -- but source from fantasygrounds website</xsl:comment>
                            <xsl:call-template name="show_token">
                               <xsl:with-param name="tokenOverride" select="concat('monsters/',substring-before(substring-after(token,'tokens/'),'.png@Monster Tokens'))" />                          
                            </xsl:call-template>                               
                        </xsl:when>
                        <xsl:when test="'@Monster Pogs' = substring(token, string-length(token) - string-length('@Monster Pogs') +1)">
                            <xsl:comment>allow for tokens using built-in monster pogs -- but source from fantasygrounds website</xsl:comment>
                            <xsl:call-template name="show_token">
                               <xsl:with-param name="tokenOverride" select="concat('monsters/',substring-before(substring-after(token,'tokens/'),'.png@Monster Pogs'))" />                          
                            </xsl:call-template>                               
                        </xsl:when>
                        <xsl:when test="'@Animal Pogs' = substring(token, string-length(token) - string-length('@Animal Pogs') +1)">
                            <xsl:comment>allow for tokens using built-in animal pogs -- but source from fantasygrounds website</xsl:comment>
                            <xsl:call-template name="show_token">
                               <xsl:with-param name="tokenOverride" select="concat('animals/',substring-before(substring-after(token,'tokens/'),'.png@Animal Pogs'))" />                          
                            </xsl:call-template>                               
                        </xsl:when>                                                
                        <xsl:when test="'@Animal Tokens' = substring(token, string-length(token) - string-length('@Animal Tokens') +1)">
                            <xsl:comment>allow for tokens using built-in animal pogs -- but source from fantasygrounds website</xsl:comment>
                            <xsl:call-template name="show_token">
                               <xsl:with-param name="tokenOverride" select="concat('animals/',substring-before(substring-after(token,'tokens/'),'.png@Animal Tokens'))" />                          
                            </xsl:call-template>                               
                        </xsl:when>                                                               <xsl:otherwise>
                           <xsl:comment>otherwise use the first initial of the NPC name and source the letter PNG from fantasygrounds.com</xsl:comment>
                            <xsl:call-template name="show_token">
                               <xsl:with-param name="tokenOverride" select="substring(name,1,1)" />
                            </xsl:call-template>   
                        </xsl:otherwise>
                       </xsl:choose>                         
            </div>    
            <a class="xref">
              <xsl:attribute name="href">
                  <xsl:value-of select="concat('#npc_',substring-after(link/recordname,'npc.'))" />
              </xsl:attribute>
               <xsl:value-of select="name" /> (<xsl:value-of select="expr" />)                
            </a><br/>
            </span>
          </xsl:for-each>  
        </div>
       </xsl:for-each>
       </div>
   </xsl:template>      
   
   <xsl:template name="show_token">
        <xsl:param name="xpath3" />
        <xsl:param name="tokenOverride" />
        <img class="token">
           <xsl:attribute name="src">
                <xsl:choose>
                    <xsl:when test="$tokenOverride">
                           http://www.fantasygrounds.com/img/tokens/<xsl:value-of select="$tokenOverride"/>.png
                    </xsl:when>
                    <xsl:otherwise>
                          <xsl:value-of select="$xpath3" />                           
                    </xsl:otherwise>
                </xsl:choose>
           </xsl:attribute>
        </img>          
   </xsl:template>
   
    <xsl:template match="link">
        <li>
            <xsl:apply-templates select="*" />
        </li>
    </xsl:template>
    
    <xsl:template match="text">
        <xsl:apply-templates select="*" />
    </xsl:template>    
  
    <xsl:template match="textblock">
        <xsl:apply-templates select="*" />
    </xsl:template>

    <xsl:template match="frame">
      <xsl:choose>
          <xsl:when test="frameid">
              <div class="speech-bubble-ds">
                    <p><strong><xsl:value-of select="frameid" /></strong></p>
                    <p><xsl:value-of select="substring-after(.,frameid)"/></p>
                    <div class="speech-bubble-ds-arrow"></div>
              </div>
          </xsl:when>
          <xsl:otherwise>
                <div class="frame">
                   <p>
                   <xsl:value-of select="." />
                    <xsl:apply-templates select="*" />
                   </p>
                </div>              
          </xsl:otherwise>
      </xsl:choose>    
    </xsl:template>    

   <xsl:template match="frameid" >
       
   </xsl:template>
   
   
    <xsl:template match="th">
        <th>
            <xsl:apply-templates select="node()"/>
        </th>
    </xsl:template> 
       
    <xsl:template match="td">
        <td>
            <xsl:apply-templates select="node()"/>
        </td>
    </xsl:template> 
          
    <xsl:template match="p | i | b | ol | ul | li | a | table | tr">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>    
          
</xsl:stylesheet>


