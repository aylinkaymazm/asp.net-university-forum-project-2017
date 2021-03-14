<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<% 
'kutuyu bos birakmayı engelleme
If trim(request("isimi"))="" then  
response.write ("<b>Eksik Bilgi! </b> Lütfen bos birakmayiniz.   [ <a href=""javascript:history.back()"">Geri</a> ]<br><br> ")
response.end  
end if

'--------------
'VT baglantisinin yapimasi:
Set Baglantim = CreateObject("ADODB.Connection") 
'VT'nin acilmasi:
Baglantim.Open ("DRIVER={Microsoft Access Driver (*.mdb)};DBQ="& Server.MapPath("db\Veritabanim.mdb"))
'Tablo nesnesinin olusturulmasi:
Set Tablom = server. CreateObject("ADODB.Recordset")
'Tablonun acilmasi:
Tablom.Open "Tablo2", Baglantim, 1, 3

'Tabloya veri eklemeye baslangic:
Tablom.AddNew 
'Tablodaki alanlara veri aktarma

Tablom("ad") =  request("isimi")
Tablom("id") =  request("idi")
Tablom("sifre") =  request("sifre1")
Tablom("eposta") =  request("emaili")
Tablom("telefon") =  request("cep")
Tablom("adress") =  request("loca")
Tablom("Tarih") = date
Tablom("meslek") = request("mes")



'aktarma islemi birince tablonun guncellenmesi:
Tablom.Update

'tablonun kapatilmasi:
  Tablom.close
  set Tablom= Nothing
'baglantinin kesilmesi:
  Baglantim.close
  set Baglantim= Nothing

  %>
  <p><meta http-equiv="refresh" content="1;URL=indexl.asp">Basariyla Kayit Olmustur..</p>
 
