SELECT 
    calisanlar.ad, 
    calisanlar.soyad, 
    birimler.birim_ad, 
    unvan.unvan_calisan, 
    ikramiye.ikramiye_ucret
FROM calisanlar
INNER JOIN birimler ON calisanlar.calisan_birim_id = birimler.birim_id
INNER JOIN unvan ON calisanlar.calisan_id = unvan.unvan_calisan_id
INNER JOIN ikramiye ON calisanlar.calisan_id = ikramiye.ikramiye_calisan_id;
