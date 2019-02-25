Nama    :Moh Iqbal Okthapian

NIM       :160411100108

Sebelum kita melakukan scraping web ,kita memerlukan library yang di gunakan untuk scraping web yaitu beautifulsoup serta pandas ,Pertama kita akan gunakan modul untuk mengakses halaman web

from urllib.request import urlopen
key=input("Masukkan judul buku?")
html=urlopen("https://www.monotaro.id/corp_id/catalogsearch/result/?q="+key).read()
print(type(html))
print(html[1:1000])

Modul yang digunakan adalah urlopen,lalu saya outputkan seribu karakter pertama.Setelah itu kita pangil beauti soupnya ,lalu kita melakukan parsing yang merubahnya menjadi object beautifulsoup,yang akan membuat kita lebih mudah untuk mencarinya.



from bs4 import BeautifulSoup
soup=BeautifulSoup(html,"lxml")
print(type(soup))
print(soup.prettify()[1:1000])

Setelah itu kita melakukan pencarian mengunakan object dari
soup, misal saya akan mencari nama barang

produk= soup.find_all("li","item-products item box")
i=1
for j in produk:
    print(j.find('h2').get_text())
    print(j.find('span','nominal').get_text())

Karna text yang akan saya cari adalah nama yang ada di tag h2 serta harga yang ada di dalam tag span dan class nominal,Setelah itu saya memasukkan nilai yang sudah didapatkan tadi ke dalam tabel sesuai kolomnya masing-masing

import pandas as pd
nm=[]
hrg=[]
stok=[]
produk=soup.find_all("li","item-products item box")
for j in produk:
    nmb=j.find_all("h2","product-name line-clamp")
    hrg1=j.find('span','nominal').get_text()
    hrg1=hrg1.replace("\n","").replace(" ","").replace(".","").replace("Rp","")
    hrg.append(hrg1)

​    btn=j.find('button').get_text()
​    btn=btn.replace("\n","").replace("Lihat semua","").replace("produk","").replace("Habis terjual","0")
​    btn=btn.replace(" ","")
​    stok.append(btn)

​    for i in nmb:
​        nama=i.find('a').get_text()
​        nama=nama.replace("\n","").replace('0','',39)

​         nm.append(nama) 

dict={'nama':nm,'harga':hrg,'stok':stok}
df=pd.DataFrame(dict,columns=['nama','harga','stok'])
df.sort_values('stok',ascending=True)



Lalu saya merubah data menjadi csv

df.to_csv("dataku.csv",sep=',')