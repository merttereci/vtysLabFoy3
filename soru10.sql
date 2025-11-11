SELECT calisanlar.ad, calisanlar.soyad, calisanlar.maas, birimler.birim_ad
FROM calisanlar
INNER JOIN birimler ON calisanlar.calisan_birim_id = birimler.birim_id
WHERE calisanlar.maas IN (
    SELECT MAX(maas)
    FROM calisanlar
    GROUP BY calisan_birim_id
);
