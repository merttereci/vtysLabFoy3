SELECT calisanlar.ad, calisanlar.soyad, unvan.unvan_calisan
FROM calisanlar
INNER JOIN unvan ON calisanlar.calisan_id = unvan.unvan_calisan_id
WHERE unvan.unvan_calisan IN ('Yönetici', 'Müdür');
