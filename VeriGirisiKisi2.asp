<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<%
'VT baglantisinin yapimasi:
Set Baglantim = CreateObject("ADODB.Connection") 
'VT'nin acilmasi:
Baglantim.Open ("DRIVER={Microsoft Access Driver (*.mdb)};DBQ="& Server.MapPath("db\Veritabanim.mdb"))
'Tablo nesnesinin olusturulmasi:
Set Tablom = server. CreateObject("ADODB.Recordset")
'Tablonun acilmasi:
Tablom.Open "Tablo4", Baglantim, 1, 3

'Tabloya veri eklemeye baslangic:
Tablom.AddNew 
'Tablodaki alanlara veri aktarma

sat = split(time(),":",-1,1) 
 
if right(time(),2)="PM" and sat(0)<>12 then
 sat(0) = sat(0) + 12
end if
sat(0) = sat(0) + 7
if sat(0)>=24 then
sat(0)=sat(0)-24
end if
saat_tr = sat(0) & ":" & sat(1) & ":" & left(sat(2),2)

 Tablom("tr1") =  saat_tr
 
 Tablom("mesaj") = request("MetinAlani")
 Tablom("Tarih") = date
 Tablom("ad") =Session("uname")

'aktarma islemi birince tablonun guncellenmesi:
Tablom.Update

'tablonun kapatilmasi:
  Tablom.close
  set Tablom= Nothing
'baglantinin kesilmesi:
  Baglantim.close
  set Baglantim= Nothing

  response.redirect "kisi2.asp"
  %>
