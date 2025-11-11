# NOT

## Türkçe Karakter Sorunu ve Çözümü

SSMS varsayılan olarak SQL dosyalarını Windows-1254 (Türkçe ANSI) encoding formatında kaydetmektedir. Ancak GitHub, dosyaları UTF-8 encoding ile okumaktadır. Bu uyumsuzluk nedeniyle SSMS'te doğru görünen Türkçe karakterler  GitHub'da bozuk karakterler olarak görüntülenmektedir. Bu sorunu çözmek için tüm SQL dosyaları PowerShell scripti kullanılarak toplu olarak UTF-8 encoding formatına dönüştürülmüştür. Dönüştürme işlemi sonrasında dosyalar GitHub'a yeniden yüklenmiş ve Türkçe karakterlerin doğru görüntülenmesi sağlanmıştır.

### Kullanılan PowerShell Scripti
```powershell
Get-ChildItem *.sql | ForEach-Object {
    $content = Get-Content $_.FullName -Encoding Default
    $content | Out-File $_.FullName -Encoding UTF8
}
```

Bu script, bulunduğu klasördeki tüm .sql dosyalarını otomatik olarak UTF-8 formatına dönüştürmektedir.
