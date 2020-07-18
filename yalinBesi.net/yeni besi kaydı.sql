insert into dbo.BesiBilgileri(KupeNo,BesiAdi,BesiCinsiID,Cinsiyet,BesiGrubuID,
DogumTarihi,Rengi,DamizlikDurumu,DogumSekliID,DogumAgirligi, BesiGrubuID
AnaBesiID,AnaBesiKupeNo,AnaBesiAdi,AnaBesiCinsiID,AnaBesiRengi,BabaBesiID,BabaBesiKupeNo,
BabaBesiAdi,BabaBesiCinsiID,BabaBesiRengi,Aciklama)
values (@KupeNo,@BesiAdi,@BesiCinsiID,@Cinsiyet,@BesiGrubuID,@DogumTarihi,@Rengi,
@DamizlikDurumu,@DogumSekliID,@DogumAgirligi,@AnaBesiID,@AnaBesiKupeNo,@AnaBesiAdi,
@AnaBesiCinsiID,@AnaBesiRengi,@BabaBesiID,@BabaBesiKupeNo,@BabaBesiAdi,@BabaBesiCinsiID,
@BabaBesiRengi,@Aciklama)
