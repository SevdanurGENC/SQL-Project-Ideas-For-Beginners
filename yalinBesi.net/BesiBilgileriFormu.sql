SELECT 
BB.KupeNo, BB.BesiAdi, BB.Cinsiyet, BB.DogumTarihi,BB.Rengi,BB.DamizlikDurumu,
BB.DogumAgirligi,BB.AnaBesiKupeNo,BB.AnaBesiAdi,BB.AnaBesiRengi,BB.BabaBesiKupeNo,
BB.BabaBesiAdi,BB.BabaBesiRengi,BB.AlisFiyati,BB.Aciklama,BB.AyrilisTarihi,BB.AyrilisYasi,
BB.Kilosu,BB.SatisFiyati,BB.AyrilisAciklama,DS.DogumSekli,
BC.BesiCinsi, DT.DogumTipi,BG.BesiGrubu
FROM 
dbo.BesiBilgileri BB(Nolock), dbo.BesiCinsi BC(Nolock),dbo.BesiGrubu BG(Nolock),
dbo.DogumSekli DS(Nolock),dbo.DogumTipi DT(Nolock)
WHERE 
BB.BesiCinsiID=BC.BesiCinsiID and BB.BesiGrubuID=BG.BesiGrubuID and 
BB.DogumSekliID=DS.DogumSekliID and BB.DogumTipiID=DT.DogumTipiID
