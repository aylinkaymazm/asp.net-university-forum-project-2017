<% 

dim id, sifre

Response.Buffer=True
Response.Expires = -100

login = Request.Form("login")
If login = "login_again" Then
    Session("UserLoggedIn") = ""
    ShowLogin
Else
    If Session("UserLoggedIn") = "true" Then
        AlreadyLoggedIn
    Else 
        If login = "true" Then
            CheckLogin
        Else
            ShowLogin
        End If
    End If
End If

Sub ShowLogin 
%>
<form method="POST" name=form2 action="index.asp">
        <input type=submit name=button1>

    </form>
    <% 
End Sub

Sub AlreadyLoggedIn
%>
    
<font face=verdana size=2>Zaten giris yapmissiniz..</font>
<p><meta http-equiv="refresh" content="1;URL=indexl.asp"></p>
<% End Sub %>

    <% Sub CheckLogin


id=request.form("id")
sifre=request.form("sifre")

Veritabani_Yol=SERVER.MAPPATH("db\Veritabanim.mdb")
Set Baglanti=Server.CreateObject("Adodb.Connection")
Baglanti.Open "DBQ=" & Veritabani_Yol &   ";Driver={Microsoft Access Driver (*.mdb)}"
Set Rs=Server.CreateObject("Adodb.recordset")
 
		Sorgu="select * from Tablo2 where ad = '" & Request.form("id") & "' and sifre = '" & Request.form("sifre") & "'"

		Rs.Open Sorgu, Baglanti, 1, 3
		If RS.BOF And RS.EOF Then
            Response.Write "Bilgiler onaylanmadi. Yanlis Kullanici Adi Veya Sifre."
            %>
        <form method="POST" name=form2 action="index.asp">
        <input type=submit name=button1>

    </form>
    <%
        
		Else
            Session("UserLoggedIn") = "true"
            Session("uname") = request.form("id")
            Response.Write "Bilgiler onaylandi."
%>
           <p><meta http-equiv="refresh" content="1;URL=indexl.asp">Basariyla Giris Yaptiniz</p>
  <%          
		End If
   
end sub %>


