<html>

<head>
    <style type="text/css">
        p {
            font-size: 25px;
            color: Purple;
        }
    </style>


</head>
<%
dim px,py
px=1-1
py=1-1
if request.Form("reset") = "Baslat/Sifirla" then
Session("x")=1-1
Session("y")=1-1
Session("cerceveY")=1-1
Session("cerceveG")=1-1
Session("x")=int(Request.Form("px"))
Session("y")=int(Request.Form("py"))
Session("cerceveY")=int(Request.Form("cy"))
Session("cerceveG")=int(Request.Form("cg"))
end if

px=Session("x")
py=Session("y")

if Session("cerceveY")<> "" and Session("cerceveG")<> "" and Session("cerceveY") >125 and Session("cerceveG") >125 then
Session("cerceveY")=Session("cerceveY")+request.Form("gen")
Session("cerceveG")=Session("cerceveG")+request.Form("gen")
end if
if Session("cerceveY") <125 and Session("cerceveY")<> ""  then 
Session("cerceveY")=0
Session("cerceveG")=0
end if
if request.Form("1")="<^" then 
Session("x")=int(px) + int(request.Form("hiz"))
Session("y")= int(py) + int(request.Form("hiz")) 
end if
if request.Form("2")="<" then 
Session("x")=int(px) + int(request.Form("hiz")) 
end if
if request.Form("3")="^" then 
Session("y")= int(py) + int(request.Form("hiz")) 
end if
if request.Form("4")="v" then 
Session("y")= int(py) - int(request.Form("hiz")) 
end if
if request.Form("5")="<v" then 
Session("x")=int(px) + int(request.Form("hiz"))
Session("y")= int(py) - int(request.Form("hiz")) 
end if
if request.Form("6")="v>" then 
Session("x")=int(px) - int(request.Form("hiz"))
Session("y")= int(py) - int(request.Form("hiz")) 
end if
if request.Form("7")="^>" then 
Session("x")=int(px) - int(request.Form("hiz"))
Session("y")= int(py) + int(request.Form("hiz")) 
end if
if request.Form("8")=">" then 
Session("x")=int(px) - int(request.Form("hiz")) 
end if
%>

<body background="indir.jpg">

    <table width="350px" height="500px">


        <table border="1" background="fondwallpapertx1.jpg" width="500px" height="800px" align="center"
            cellpadding="20px">

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
                <td>
                    <h2>Harita Ekrana Gelmediyse Baslat/Sifirlaya Basiniz.</h2>

                    <div style="margin: 40px 0 0 0">
                        <div
                            style="margin-left:auto; margin-right:auto; width:<%=Session("cerceveG")%>px; height:<%=Session("cerceveY")%>px; background-image:url(http://www.kgm.gov.tr/SiteCollectionImages/KGMimages/Haritalar/turistik.jpg); background-position:<%=Session("x")%>px <%=Session("y")%>px;">
                        </div>
                    </div>


                    <div class="sagIcerik">

                        <div style="position: fixed; width: 300px; height: 600px; right:0; top:150px;">
                            <form action="Map.asp" method="post">
                                <div style="position: absolute; background-color: white; left: 60px; top: 170px;"><input
                                        name="1" type="submit" value="<^"></div>
                                <div style="position: absolute; background-color: white; left: 60px; top: 240px;"><input
                                        name="2" type="submit" value="<"></div>
                                <div style="position: absolute; background-color: white; left: 130px; top: 170px;">
                                    <input name="3" type="submit" value="^"></div>
                                <div style="position: absolute; background-color: white; left: 130px; top: 310px;">
                                    <input name="4" type="submit" value="v"></div>
                                <div style="position: absolute; background-color: white; left: 60px; top: 310px;"><input
                                        name="5" type="submit" value="<v"></div>
                                <div style="position: absolute; background-color: white; left: 200px; top: 310px;">
                                    <input name="6" type="submit" value="v>"></div>
                                <div style="position: absolute; background-color: white; left: 200px; top: 170px;">
                                    <input name="7" type="submit" value="^>"></div>
                                <div style="position: absolute; background-color: white; left: 200px; top: 240px;">
                                    <input name="8" type="submit" value=">"></div>
                                <div style="position: absolute; background-color: white; left: 75px; top: 450px;">
                                    <select name="gen" size="1">
                                        <option value="0">0</option>
                                        <option value="-125">-5</option>
                                        <option value="-100">-4</option>
                                        <option value="-75">-3</option>
                                        <option value="-50">-2</option>
                                        <option value="-25">-1</option>
                                        <option value="25">1</option>
                                        <option value="50">2</option>
                                        <option value="75">3</option>
                                        <option value="125">4</option>
                                        <option value="175">5</option>
                                        <option value="175">6</option>
                                        <option value="250">7</option>
                                        <option value="400">8</option>
                                        <option value="700">9</option>
                                        <option value="1000">10</option>
                                    </select>
                                    <input type="submit" value="Kucult/Buyut"></div>
                                <div style="position: absolute; background-color: white; left: 80px; top: 120px">
                                    <strong>Hareket Hizi: </strong><select name="hiz" size="1">
                                        <option value="125">1x</option>
                                        <option value="250">2x</option>
                                        <option value="500">3x</option>
                                        <option value="750">4x</option>
                                        <option value="1000">5x</option>
                                    </select>
                                </div>
                            </form>
                            <form action="Map.asp" method="post">
                                <input type="hidden" name="cg" value="575">
                                <input type="hidden" name="cy" value="575">
                                <input type="hidden" name="px" value="-3225">
                                <input type="hidden" name="py" value="-600">
                                <div style="position: absolute; background-color: white; left: 100px; top: 240px;">
                                    <input name="reset" type="submit" value="Baslat/Sifirla"></div>
                            </form>
                            <form action="http://www.kgm.gov.tr/SiteCollectionImages/KGMimages/Haritalar/turistik.jpg"
                                method="post" target="_blank">
                                <div style="position: absolute; background-color: white; left: 100px; top: 500px;">
                                    <input name="showall" type="submit" value="Tamami Goster"></div>
                            </form>
                        </div>
                    </div>
                </td>

                </td>


            </tr>

        </table>
    </table>


</body>

</html>