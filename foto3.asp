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

   <table width="300px" , height="500px">


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
               <table border="0" width="400">
                  <tr>
                     <td width="200">
              
                     </td>
                     <td width="200">
                      
                     </td>
                  </tr>

                  <tr>

                     <img src="IMG-20170507-WA0000.jpg" width="800px" height="500px" /><br><br>
                  </tr>
                  <div class="sagIcerik">
                        <div class="fotograf_sayfa">
                            <div align="center">
                                <%
                                Set oConn = Server.CreateObject("ADODB.Connection")
                                oConn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("db\Veritabanim.mdb"))
                                ssql="select * from Tablo9"
                                Set oRS = oConn.Execute(sSQL)
                                %>
                                <table border="1" width="100%" cellspacing="0" cellpadding="0" bordercolor="#000000"
                                    style="border-collapse: collapse; text-align:center">
                                    <tr>
            
                                        <td width="25%" style="border-style:solid; border-width:1; " bgcolor="#C0C0C0">
                                            <b>
                                                <font face="Verdana">Kayit Tarihi</font>
                                            </b></td>
                                        <td width="25%" style="border-style:solid; border-width:1; " bgcolor="#C0C0C0">
                                            <b>
                                                <font face="Verdana">Kayit Saati</font>
                                            </b></td>
                                        <td width="25%" style="border-style:solid; border-width:1; " bgcolor="#C0C0C0">
                                            <b>
                                                <font face="Verdana">Mesaj</font>
                                            </b></td>
                                        <td width="25%" style="border-style:solid; border-width:1; " bgcolor="#C0C0C0">
                                            <b>
                                                <font face="Verdana">Ad-Soyadi</font>
                                            </b></td>
            
            
                                    </tr>
                                    <%
                                Do While NOT oRS.EOF 
                                %>
                                    <tr>
                                        <td width="25%" style="border-style:solid; border-width:1; ">
                                            <font face="Tahoma" size="2"><%=oRS("Tarih")%></font>&nbsp;
                                        </td>
                                        <td width="25%" style="border-style:solid; border-width:1; ">
                                            <font face="Tahoma" size="2"><%=oRS("tr1")%></font>&nbsp;
                                        </td>
                                        <td width="25%" style="border-style:solid; border-width:1; ">
                                            <font face="Tahoma" size="2"><%=oRS("mesaj")%></font>&nbsp;
                                        </td>
                                        <td width="25%" style="border-style:solid; border-width:1; ">
                                            <font face="Tahoma" size="2"><%=oRS("ad")%></font>&nbsp;
                                        </td>
            
            
            
            
            
            
                                        <%	
                                    oRS.MoveNext
                                Loop
                                    
                                            
                                oConn.Close
                                Set oRS = Nothing
                                Set oConn = Nothing
                                %>
                                </table>
                                </center>
                                <br>
                                <br>
            
            
                                <div class="kutu"><center>
                                    <form action="VeriGirisifoto3.asp" method="post">
            
            
            
                                        <textarea style="width: 300px; height: 100px" name="MetinAlani" id="MetinAlani" COLS="30"
                                            ROWS="3" WRAP="VIRTUAL">
            
            
                                        </textarea>
                                        <input type="submit" value="Gonder">&nbsp;&nbsp;
                                    </form></center>
                                </div>
            
                            </div>
            
                        </div>

         </tr>

      </table>

</body>

</html>