select bb.BesiBilgileriID, BB.KupeNo, BB.BesiAdi,AT.AsiTipi,ak.AsiDurumu, 
AK.AsiTarihi, CB.AdiSoyadi, AK.VerilenTutar, AK.Aciklama
from dbo.BesiBilgileri BB(Nolock), dbo.AsiKarti AK(Nolock), dbo.AsiTipi AT(Nolock),
dbo.CariBilgileri CB(Nolock)
where 
BB.BesiBilgileriID=AK.BesiID and AT.AsiTipiID=AK.AsiTipiID and CB.CariBilgileriID=AK.KisiID