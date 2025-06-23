# 📁 Örnek 1: Önemli dosyaları "backup" klasörüne yedekleme

# "backup" adında bir klasör oluşturuluyor
New-Item -Path "C:\Users\bahob\dosya gezgini\backup" -ItemType Directory -Force

# "important" klasöründeki veriler "backup" klasörüne kopyalanıyor
Copy-Item -Path "C:\Users\bahob\dosya gezgini\ımportant" `
          -Destination "C:\Users\bahob\dosya gezgini\backup" -Recurse -Force


# 📁 Örnek 2: Rapor klasörü oluşturma ve dosya üretimi

# Üst düzey rapor klasörü
New-Item -Path "C:\Users\bahob\Desktop\Reports" -ItemType Directory -Force

# "Daily" ve "Archive" klasörlerini oluştur
New-Item -Path "C:\Users\bahob\Desktop\Reports\Daily" -ItemType Directory -Force
New-Item -Path "C:\Users\bahob\Desktop\Reports\Archive" -ItemType Directory -Force

# 1'den 5'e kadar 5 adet boş rapor dosyası oluştur
1..5 | ForEach-Object {
    New-Item -Path "C:\Users\bahob\Desktop\Reports\Daily\report$_.txt" -ItemType File -Force
}


# 📁 Örnek 3: ".tmp" uzantılı geçici dosyaları silme

# Klasördeki tüm ".tmp" dosyalarını sil
$folder = "C:\Users\bahob\Desktop\Temp"

Get-ChildItem -Path $folder -Filter *.tmp | ForEach-Object {
    Remove-Item $_.FullName -Force
}
