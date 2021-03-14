<html>

<head>
	<style type="text/css">
		p {
			font-size: 25px;
			color: black;
		}
	</style>


</head>

<body background="indir.jpg">

	<table width="350px" height="500px">


		<table border="1" background="fondwallpapertx1.jpg" width="500px" height="800px" align="center" cellpadding="20px">

			<tr>


				<td width="200px">
					<p>

						<center>
							<font face="Georgia" </font> <a href="indexl.asp" style="color:purple"><b>Anasayfa</a><br>
									<center><a href="Kisiler.asp" style="color:purple">Kisiler</a><br>
										<center><a href="fotograflar.asp" style="color:purple">Fotograflar</a><br>
											<center><a href="Nerede.asp" style="color:purple">Kim Nerede,Ne yapiyor?</a><br>
												<center><a href="Videolar.asp" style="color:purple">Videolar</a><br>
													<center><a href="Forum.asp" style="color:purple">Forum</a><br>
														<center><a href="Kayitl.asp" style="color:purple">Kayit</a><br>
															<center><a href="Map.asp" style="color:purple" font>Harita</a><br>

																<form action="">
																	<p align="center"></p>
																	<p align="center"></p>
																	<div align="center">

																		<table border="0" width="250">


																		</table>
																	</div>

																</form>

				</td>
				<td width="850px" height="1050px" border="1px" colspan="9">


					<table border="1px" width="1050px">

							<div class="sagIcerik">


									<%
			
			
					'Option Explicit
					Response.Expires = -1000
					
					
					'______________veritabanındaki kayıt sayısı bulunuyor:
					Dim cnnDB, Rs, mySQL, ks 'ks: veritabanındaki toplam kayıt sayısı
					'-- cnnDB isimli veritabany ba?lanty nesnesi olu?turuldu.   
					Set cnnDB=Server.CreateObject("ADODB.Connection" ) 
					'-- Rs isimli recordSet nesnesi olu?turuldu.   
					Set Rs =Server.CreateObject("ADODB.Recordset" ) 
					'-- ODBC'den MyDSN isimli veritabany açyldy.   
					cnnDB.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("db/Veritabanim.mdb"))
					'-- SQL olu?turuldu.   
					mySQL="Select * FROM Tablo2;" 
					'-- SQL ba?lanty nesnesi üzerinde çaly?tyryldy, sonucu Rs recordSet nesnesine aktaryldy.   
					Rs.Open mySQL,cnnDB,3 
					'-- RS'de bulunan kayytlaryn sayysy kayitsayisi de?i?kenine atandy.   
					ks=Rs.recordcount 
					'-- Kayyt sayysy ekrana yazdyryldy.   
					'Response.Write ks 
					'-- RecordSet kapatyldy.   
					Rs.Close 
					'-- Ba?lanty kapatyldy.   
					cnnDB.Close 
					'-- Ba?lanty bellekten silindi.   
					Set cnnDB=Nothing 
					
					sonsayfa=(int((ks-1)/5))+1 
					
					'__________
					
					
					Dim oConn
					Dim oRS
					Dim sonsayfa
					Dim sSQL
					Dim sql
					Dim nosu
					dim ada
					dim cekbaks(50)
					dim kod(50)
					Dim i
					
					By=Request.QueryString("By")
					
					If Request.QueryString("Sayfa") = "" Then
							Sayfa = 1
					Else
							sayfa = cInt(Request.QueryString("Sayfa"))
					end if
					
					
					Set oConn = Server.CreateObject("ADODB.Connection")
					oConn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("db/Veritabanim.mdb"))
					
					
					if By="Kime" or By="" then
					ssql="select * from Tablo2 ORDER BY ad;"
					elseif By="ad" then
					ssql="select * from Tablo2 ORDER BY adress;"
					elseif By="adress" then
					ssql="select * from Tablo2 ORDER BY telefon;"
					elseif By="telefon" then
					ssql="select * from Tablo2 ORDER BY Tarih;"
						 elseif By="Tarih" then
					ssql="select * from Tablo2 ORDER BY eposta;"
					elseif By="eposta" then
					
					end if
					
					
					Set oRS = oConn.Execute(sSQL)
					
					i=0
					%>
			
			
									<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9">
			
									<body bgcolor="#F7F7F7">
			
			
			
											<p align="center">
													<font face="Verdana"><b>
																
			
																	<p align="center"><b>
																					<font face="Arial">
																							<a href="indexl.asp">Menuye Don</a></font>
																			</b></p>
			
																	<p align="center">
													</font>
													<br>
													<br>
													<br>
			
													<%
					'SAYFALANDIRMA OKLT1Kqob5UDEML61gCyjnAcfMXgkdP3wGcg45QJGhaovqyemdbR9em_____
					if sayfa>1 then%>
													<b>
															<font face="Verdana">|< <a href="Nerede.asp?sayfa=<%=1%>&by=<%=by%>">ilk Sayfa</a>
													</b>
			
													<font face="Verdana">&nbsp;</font>
			
													<b>
															<font face="Verdana">
																	< <a href="Nerede.asp?sayfa=<%=sayfa - 1%>&by=<%=by%>">onceki Sayfa</a>
													</b>
			
			
													<%end if%>
													<font face="Verdana">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=sayfa%> /
															<%=sonsayfa%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>
			
													<%
					
					if sonsayfa<>sayfa  then%>
													<b>
															<font face="Verdana"><a href="Nerede.asp?sayfa=<%=sayfa + 1%>&by=<%=by%>">Sonraki Sayfa</a>
																	></font>
													</b>
			
													<font face="Verdana">&nbsp;</font>
			
													<b>
															<font face="Verdana"><a href="Nerede.asp?sayfa=<%=sonsayfa%>&by=<%=by%>">En Son Sayfa</a> >|
															</font>
													</b>
													<%end if 
					'_____________________________________________________________________________
					%>
			
													<br>
													&nbsp;<div align="center">
															<center>
			
			
																	<table border="1" width="650" cellspacing="0" cellpadding="0" bordercolor="#000000"
																			style="border-collapse: collapse; text-align:center">
			
																			<tr>
			
																					<td width="15%" style="border-style:solid; border-width:1; " bgcolor="#C0C0C0">
																							<b>
																									<font face="Verdana"><a href="Nerede.asp?By=ad">AD</a></font>
																							</b></td>
																					<td width="15%" style="border-style:solid; border-width:1; " bgcolor="#C0C0C0">
																							<b>
																									<font face="Verdana"><a href="Nerede.asp?By=adress">adress</a></font>
																							</b></td>
																					<td width="15%" style="border-style:solid; border-width:1; " bgcolor="#C0C0C0">
																							<b>
																									<font face="Verdana"><a href="Nerede.asp?By=telefon">Telefon</a>
																									</font>
																							</b></td>
																					<td width="15%" style="border-style:solid; border-width:1; " bgcolor="#C0C0C0">
																							<b>
																									<font face="Verdana"><a href="">E-MAIL</a></font>
																							</b></td>
																					<td width="15%" style="border-style:solid; border-width:1; " bgcolor="#C0C0C0">
																							<b>
																									<font face="Verdana"><a href="Nerede.asp?By=Tarih">Tarih</a></font>
																							</b></td>
																			</tr>
			
																			<%
					Do While NOT oRS.EOF 
					i=i+1
					if i >= ((sayfa-1)*5)+1 and i <= sayfa*5 then
					%>
			
																			<tr>
			
																					<td width="15%" style="border-style:solid; border-width:1;">
																							<font face="Tahoma" size="2"><%=oRS("ad")%></font>&nbsp;
																					</td>
																					<td width="15%" style="border-style:solid; border-width:1; ">
																							<font face="Tahoma" size="2"><%=oRS("adress")%></font>&nbsp;
																					</td>
																					<td width="15%" style="border-style:solid; border-width:1; ">
																							<font face="Tahoma" size="2"><%=oRS("telefon")%></font>&nbsp;
																					</td>
																					<td width="15%" style="border-style:solid; border-width:1; ">
																							<font face="Tahoma" size="2"><%=oRS("eposta")%></font>&nbsp;
																					</td>
																					<td width="15%" style="border-style:solid; border-width:1; ">
																							<font face="Tahoma" size="2"><%=oRS("Tarih")%>
																							</font>&nbsp;
																					</td>
			
																					</td>
																					</font>&nbsp;</td>
																			</tr>
			
																			<%	
					end if
							oRS.MoveNext
					
					Loop
					
					%>
			
																	</table>
			
															</center>
													</div>
			
													</center>
							</div>
			
			
							</font>
			
			
							</font>
			
			
							</font>
							</font>
							</font>
			
			
							<%
					
					oConn.Close
					Set oRS = Nothing
					Set oConn = Nothing
					
					
					
					%>
			
					</div>
			
			
					</div>
					</table>
				</td>



		</table>

</body>

</html>