<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method='html' version='1.0' encoding='ISO-8859-1' indent='yes'/>

<xsl:template match="/">
<html>

<head>
<title>Defects</title>
<style type="text/css">

.odd {
 background-color:white;
}

.even {
 background-color:#eeeeee;
}
</style>
</head>

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red">

<table border="1" width="1000" cellspacing="0" bordercolordark="white" bordercolorlight="black">
    <tr>
        <td width="1408" colspan="10" bgcolor="#FF9966" bordercolor="black">
            <p align="center"><font face="Arial" size="2" color="black"><b>DEFECTS REPORT</b></font></p>
        </td>
    </tr>
    <tr>
        <td width="103" bgcolor="#FFCC99">
            <p><font face="Arial" size="2"><b>TestCase</b></font></p>
        </td>
        <td width="607" colspan="3" bgcolor="#FFCC99">
            <p><font face="Arial" size="2"><xsl:value-of select="/Report/@testCase" /></font></p>
        </td>
        <td width="214" bgcolor="#FFCC99">
            <p><font face="Arial" size="2"><b>Description</b></font></p>
        </td>
        <td width="605" colspan="5" bgcolor="#FFCC99">
            <p><font face="Arial" size="2"></font></p>
        </td>
    </tr>
	<tr>
        <td width="117" bgcolor="#FAE5D0">
            <center>
                 <img src="img/MsgUnFoundError.png" width="30" heigth="30"/>                 
            </center>
        </td>
        <td width="117" bgcolor="#FAE5D0">
            <p align="center"><font face="Arial" size="2">MsgUnFoundError</font></p>
        </td>
        <td width="117" bgcolor="#FAE5D0">
            <center>
                 <img src="img/MsgSyntaxError.png" width="30" heigth="30"/>                 
            </center>
        </td>
        <td width="117" bgcolor="#FAE5D0">
            <p align="center"><font face="Arial" size="2">MsgSyntaxError</font></p>
        </td>
        <td width="117" bgcolor="#FAE5D0">
            <center>
                 <img src="img/MsgPositionError.png" width="30" heigth="30"/>                 
            </center>
        </td>
        <td width="117" bgcolor="#FAE5D0">
            <p align="center"><font face="Arial" size="2">MsgPositionError</font></p>
        </td>
        <td width="117" bgcolor="#FAE5D0">
            <center>
                 <img src="img/AbstractMsgError.png" width="30" heigth="30"/>                 
            </center>
        </td>
        <td width="117" bgcolor="#FAE5D0">
            <p align="center"><font face="Arial" size="2">AbstractMsgError</font></p>
        </td>
        <td width="117" bgcolor="#FAE5D0">
            <center>
                 <img src="img/MsgDiffAlert.png" width="25" heigth="25"/>                 
            </center>
        </td>
		<td width="117" bgcolor="#FAE5D0">
            <p align="center"><font face="Arial" size="2">MsgDiffAlert</font></p>
        </td>		
    </tr>
    <tr>
        <td width="83" bgcolor="#FAE5D0">
            <p align="center"><font face="Arial" size="2"><b>Number</b></font></p>
        </td>
        <td width="132" bgcolor="#FAE5D0">
            <p align="center"><font face="Arial" size="2"><b>Type</b></font></p>
        </td>
        <td width="700" colspan="2" bgcolor="#FAE5D0">
            <p align="center"><font face="Arial" size="2"><b>Description<span style="visibility:hidden">-----------------------------------------------</span></b></font></p>
        </td>
        <td width="80" bgcolor="#FAE5D0">
            <p align="center"><font face="Arial" size="2"><b>Actual Sender</b></font></p>
        </td>
        <td width="80" bgcolor="#FAE5D0">
            <p align="center"><font face="Arial" size="2"><b>Actual Message</b></font></p>
        </td>
        <td width="80" bgcolor="#FAE5D0">
            <p align="center"><font face="Arial" size="2"><b>Actual Receiver</b></font></p>
        </td>
        <td width="135" bgcolor="#FAE5D0">
            <p align="center"><font face="Arial" size="2"><b>Expected Sender</b></font></p>
        </td>
        <td width="199" bgcolor="#FAE5D0">
            <p align="center"><font face="Arial" size="2"><b>Expected Message</b></font></p>
        </td>
        <td width="147" bgcolor="#FAE5D0">
            <p align="center"><font face="Arial" size="2"><b>Expected Receiver</b></font></p>
        </td>
    </tr>
    <xsl:apply-templates />
	
</table>

<script type="text/javascript"><![CDATA[

  fts = document.getElementsByTagName('font');
  for (var i = 0; i < fts.length; i++){
     ft = fts[i];
	 if(ft.className  == 'descriptions'){
	    ft.innerHTML = ft.getAttribute('description');
	 }
  }
]]>
</script>

</body>

</html>

</xsl:template>

<xsl:template match="defect">
    
    <tr>
	    
		<xsl:attribute name="class">
		    <xsl:if test="count(preceding-sibling::defect) mod 2 = 1">even</xsl:if>
			<xsl:if test="count(preceding-sibling::defect) mod 2 = 0">odd</xsl:if>
		</xsl:attribute>
        <td width="83">
            <center><p><font face="Arial" size="2" color="#CC3333"><xsl:value-of select="position() div 2"/></font></p></center>
        </td>
        <td width="132">
            <p>
               <center>
                 <img>
                   <xsl:attribute name="src">	
                       img/<xsl:value-of select="@type"/>.png
               	 </xsl:attribute>
                   <xsl:attribute name="width">	
                       30px
               	 </xsl:attribute>
                   <xsl:attribute name="heigth">	
                       30px
               	 </xsl:attribute>
                 </img>              
               </center>
            </p>
        </td>
        <td width="700" colspan="2" >
            <p ><font face="Arial" class="descriptions" size="2" color="#CC3333"><xsl:copy-of select="./@description" /></font></p>
        </td>
        <td width="80">		   
            <p><center><font face="Arial" size="2" color="#CC3333"><xsl:value-of select="@actualSender"/></font></center></p>
        </td>
        <td width="80">
            <p><center><font face="Arial" size="2" color="#CC3333"><xsl:value-of select="@actualMessage"/></font></center></p>
        </td>
        <td width="80">
            <p><center><font face="Arial" size="2" color="#CC3333"><xsl:value-of select="@actualReceiver"/></font></center></p>
        </td>
        <td width="135">
            <p><center><font face="Arial" size="2" color="#CC3333"><xsl:value-of select="@expectedSender"/></font></center></p>
        </td>
        <td width="199">
            <p><center><font face="Arial" size="2" color="#CC3333"><xsl:value-of select="@expectedMessage"/></font></center></p>
        </td>
        <td width="147">
            <p><center><font face="Arial" size="2" color="#CC3333"><xsl:value-of select="@expectedReceiver"/></font></center></p>
        </td>
    </tr>
</xsl:template>

<xsl:template match="alert">
    
    <tr>
      	<xsl:attribute name="class">
		    <xsl:if test="count(preceding-sibling::alert) mod 2 = 0">even</xsl:if>
			<xsl:if test="count(preceding-sibling::alert) mod 2 = 1">odd</xsl:if>
		</xsl:attribute>


        <td width="83" >
            <center><p><font face="Arial" size="2" color="#0066CC"><xsl:value-of select="position() div 2"/></font></p></center>
        </td>
        <td width="132">
            <p>			 
               <center>
                 <img>
                   <xsl:attribute name="src">	
                       img/<xsl:value-of select="@type"/>.png
               	 </xsl:attribute>
                   <xsl:attribute name="width">	
                       25px
               	 </xsl:attribute>
                   <xsl:attribute name="heigth">	
                       25px
               	 </xsl:attribute>
                 </img>              
               </center>            
			</p>
        </td>
        <td width="700" colspan="2" >
            <p><font face="Arial" size="2" class="descriptions" color="#0066CC"><xsl:copy-of select="./@description" /></font></p>
        </td>
        <td width="80">
            <p><center><font face="Arial" size="2" color="#0066CC"><xsl:value-of select="@actualSender"/></font></center></p>
        </td>
        <td width="80">
            <p><center><font face="Arial" size="2" color="#0066CC"><xsl:value-of select="@actualMessage"/></font></center></p>
        </td>
        <td width="80">
            <p><center><font face="Arial" size="2" color="#0066CC"><xsl:value-of select="@actualReceiver"/></font></center></p>
        </td>
        <td width="135">
            <p><center><font face="Arial" size="2" color="#0066CC"><xsl:value-of select="@expectedSender"/></font></center></p>
        </td>
        <td width="199">
            <p><center><font face="Arial" size="2" color="#0066CC"><xsl:value-of select="@expectedMessage"/></font></center></p>
        </td>
        <td width="147">
            <p><center><font face="Arial" size="2" color="#0066CC"><xsl:value-of select="@expectedReceiver"/></font></center></p>
        </td>
    </tr>    
		
</xsl:template>

</xsl:stylesheet>

