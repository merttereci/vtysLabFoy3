SELECT unvan_calisan, COUNT(unvan_calisan_id) AS calisan_sayisi
FROM unvan
GROUP BY unvan_calisan
HAVING COUNT(unvan_calisan_id) > 1;
