SELECT birimler.birim_ad, COUNT(calisanlar.calisan_id) AS calisan_sayisi
FROM birimler
INNER JOIN calisanlar ON birimler.birim_id = calisanlar.calisan_birim_id
GROUP BY birimler.birim_ad;
