<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">

<%

dkod = Request.form("cekbaks")

StrDizi=split(dkod,",",-1,1)

dizi= UBound(StrDizi)

i=0

Do While not i=dizi+1

'______________________ 

' i�aretlenmi� OLAN HER B�R KAYDI AL:

set conn=server.createobject("adodb.connection")
path = "DRIVER={MICROSOFT ACCESS DRIVER (*.mdb)}; "
path = path & "DBQ=" & Server.MapPath("db/veritabanim.mdb")
conn.open path
ssql = "select * from Tablo1 where ad ='" & strDizi(i) & "'"
Set rs=conn.execute(ssql)

'______________________  S�L:

Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("db/veritabanim.mdb"))

		set kayit_sil = Server.CreateObject("ADODB.RecordSet")
		SQL = "delete * from Tablo1 Where ad ='" & strDizi(i) & "'"

		kayit_sil.Open sql, oConn, 1, 2
		
		set kayit_sil=nothing
		oConn.CLOSE
		SET oConn = NOTHING

i=i+1

Loop
%>
<center>
	Kayit Silinmiitir
	<br>
	<br>
	<a href="Forum.asp">Foruma Don</a>