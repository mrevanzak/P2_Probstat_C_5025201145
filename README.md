| NRP        | NAMA                       |
| ---------- | -------------------------- |
| 5025201145 | Mochamad Revanza Kurniawan |

## Nomor 1

### A
Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel
diatas
Untuk menghitung standar deviasi tinggal menggunakan fungsi `sd()`
![image](https://user-images.githubusercontent.com/73029778/170860638-691d8d7f-fc18-4827-9238-11c0c66f0ba3.png)
### B
Carilah nilai t (p-value)
Untuk menghitung nilai t tinggal menggunakan fungsi `t.test()`
![image](https://user-images.githubusercontent.com/73029778/170860681-4d79cdc3-aafd-4375-a416-dc50f2ecf0aa.png)
### C
Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika
dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan
aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada
pengaruh yang signifikan secara statistika dalam hal kadar saturasi
oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

```
p-value     < tingkat signifikansi 
0.00006003  < 0.05
Jadi pernyataan H0 dapat ditolak sehingga terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas A
```
## Nomor 2
![image](https://user-images.githubusercontent.com/73029778/170860838-60deb974-5a4b-44dc-bc2a-ed807d7ea929.png)
### A
Apakah Anda setuju dengan klaim tersebut?
```
Setuju karena dari random sample yang diambil saja sudah membuktikan klaim tersebut
```
### B
Jelaskan maksud dari output yang dihasilkan!
```
Berdasarkan output yang dihasilkan, diperoleh nilai t = 8.9744 dengan derajat bebas 99 dan nilai p-value 9.437e-15. 
```
### C
Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!
```
H0 : mean.x < 20000

p-value     < tingkat signifikansi 
9.437e-15   < 0.05
Jadi pernyataan H0 dapat ditolak sehingga klaim mobil dikemudikan rata-rata lebih dari 20000 kilometer per tahun itu benar
```
## Nomor 3
### A
H0 dan H1
```
H0 : rata-rata pemegang saham dari bandung sama dengan pemegang saham dari bali
H1 : rata-rata pemegang saham dari bandung tidak sama dengan pemegang saham dari bali
```
### B
Hitung Sampel Statistik
![image](https://user-images.githubusercontent.com/73029778/170874818-6a222fb1-d9ac-4e27-9949-818133cadb74.png)
### C
Lakukan Uji Statistik (df =2)
![image](https://user-images.githubusercontent.com/73029778/170876532-d9d93bd3-79a9-498e-9de8-ae46c71c2642.png)
### D 
Nilai Kritikal
![image](https://user-images.githubusercontent.com/73029778/170874837-867ea08e-d7aa-49d0-b1fd-94e8b7d23035.png)
### E
```
Pernyataan H0 dapat ditolak
```
### F
```
Jadi rata-rata pemegan saham dari bandung tidak sama dengan pemegang saham dari bali
```
## Nomor 4
### A
Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup
2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan
lihat apakah ada outlier utama dalam homogenitas varians.

Grup 1 <br>
![image](https://user-images.githubusercontent.com/73029778/170869766-1ccee503-6e43-463f-a97d-e48f360bbbae.png)<br>

Grup 2 <br>
![image](https://user-images.githubusercontent.com/73029778/170869794-7693fa4b-5491-46dd-a1f2-4b899925f1f7.png)<br>

Grup 3 <br>
![image](https://user-images.githubusercontent.com/73029778/170869804-ae9ef1cb-ccfa-428a-ad53-d6093ef6c88b.png)

```
Ketiga grup tersebut tidak terdapat outlier.
```
### B
Carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang
didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil?

![image](https://user-images.githubusercontent.com/73029778/170869964-4c729340-b6ad-4997-a287-35f69a410042.png)
```
p-value       > tingkat signifikansi 
0.8054        > 0.05
Jadi tidak ada bukti yang menunjukkan bahwa varians antar kelompok secara statistik berbeda secara signifikan
```
### C
Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus
Grup dan beri nama model tersebut model 1.
![image](https://user-images.githubusercontent.com/73029778/170870172-b6f284e7-70c0-401c-bebc-3e3c1040f81b.png)

### D
Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan
dari H0?
```
p-value         < tingkat signifikansi 
# 0.0013        < 0.05
# Jadi pernyataan H0 dapat ditolak sehingga terdapat perbedaan di antara 3 jenis kucing
```

### E
Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p
yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain?'

![image](https://user-images.githubusercontent.com/73029778/170871652-8d8de839-de3a-43a5-a351-bcfc7d9adff0.png)
```
Jenis kucing yang terbukti lebih panjang dari yang lain adalah yang memiliki p-value < 0.05, yaitu kucing hitam dan oren serta kucing putih dan hitam.
```
### F
Visualisasikan data dengan ggplot2
![image](https://user-images.githubusercontent.com/73029778/170870335-d82c756d-b604-4507-a4c6-13a50ba08d10.png)

## Nomor 5
### A
Buatlah plot sederhana untuk visualisasi data
![image](https://user-images.githubusercontent.com/73029778/170860941-0121d4b6-30b8-48f8-ac07-1a7dbbfa5986.png)
### B
Lakukan uji ANOVA dua arah
![image](https://user-images.githubusercontent.com/73029778/170861020-1f148ecc-41cb-485d-b67e-55fa386c33a6.png)
### C
Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk
setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)
![image](https://user-images.githubusercontent.com/73029778/170861046-d263107e-701e-4362-ba85-229868d931e4.png)
### D
Lakukan uji Tukey
![image](https://user-images.githubusercontent.com/73029778/170861166-c24a8a62-ac79-4b7f-8139-6386cf9c68cb.png)
### E
Gunakan compact letter display untuk menunjukkan perbedaan signifikan
antara uji Anova dan uji Tukey
![image](https://user-images.githubusercontent.com/73029778/170861195-f58f5fd2-711d-4f79-8132-016620b4ef0e.png)