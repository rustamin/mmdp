class CreateMataharinyas < ActiveRecord::Migration[5.0]
  def change
    create_table :mataharinyas do |t|
      t.boolean :model_persamaan
      t.boolean :data_historis
      t.boolean :variable
      t.boolean :intuisi
      t.boolean :subjektif
      t.boolean :waktu
      t.boolean :periodisasi
      t.boolean :variabel_bebas
      t.boolean :kuesioner
      t.boolean :alat_interview
      t.boolean :uji_coba
      t.boolean :dua_variabel_keputusan
      t.boolean :linier_programming
      t.boolean :garis_tren
      t.boolean :garis_lurus
      t.boolean :populasi_objek
      t.boolean :banyak_staff
      t.boolean :kemampuan_analisis
      t.boolean :wawancara_langsung
      t.boolean :opini_masyarakat
      t.boolean :waktu_singkat
      t.boolean :sebagian_objek
      t.boolean :imbalan_koresponden
      t.boolean :memperagakan_kegiatan
      t.boolean :praktek

      t.timestamps
    end
  end
end
