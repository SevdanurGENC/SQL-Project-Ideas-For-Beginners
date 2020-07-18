SELECT BB.BesiBilgileriID, BB.KupeNo, BB.BesiAdi, hb.Teshis, HB.TeshisTarihi, TS.TedaviSonucu
            FROM dbo.BesiBilgileri BB(Nolock), dbo.HastalikBilgileri HB(Nolock), dbo.TedaviSonucu TS(Nolock)
            WHERE BB.BesiBilgileriID =HB.HastalikBilgileriID and HB.TedaviSonucuID=TS.TedaviSonucuID
