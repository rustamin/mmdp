rails g scaffold mataharinya model_persamaan:boolean data_historis:boolean variable:boolean intuisi:boolean subjektif:boolean waktu:boolean periodisasi:boolean variabel_bebas:boolean kuesioner:boolean alat_interview:boolean uji_coba:boolean dua_variabel_keputusan:boolean linier_programming:boolean garis_tren:boolean garis_lurus:boolean populasi_objek:boolean banyak_staff:boolean kemampuan_analisis:boolean wawancara_langsung:boolean opini_masyarakat:boolean waktu_singkat:boolean sebagian_objek:boolean imbalan_koresponden:boolean memperagakan_kegiatan:boolean praktek:boolean
scaffoldnya

#Rendernya
render regresi if variabel_bebas.true?

render grafik if dua_variabel_keputusan.true? linier_programming.true?

render proyeksi_tren if garis_lurus.true? || garis_tren.true?

render survei_lengkap if populasi_objek.true?

render survei_delphi if banyak_staff.true? || kemampuan_analisis.true?

render survei_opini if wawancara_langsung.true? || opini_masyarakat.true?

render survei_sample if waktu_singkat.true? || sebagian_objek.true?

render simulasi_pasar if memperagakan_kegiatan.true? || imbalan_koresponden.true?

render uji_pasar if praktek.true?
