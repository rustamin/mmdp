require 'test_helper'

class MataharinyasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mataharinya = mataharinyas(:one)
  end

  test "should get index" do
    get mataharinyas_url
    assert_response :success
  end

  test "should get new" do
    get new_mataharinya_url
    assert_response :success
  end

  test "should create mataharinya" do
    assert_difference('Mataharinya.count') do
      post mataharinyas_url, params: { mataharinya: { alat_interview: @mataharinya.alat_interview, banyak_staff: @mataharinya.banyak_staff, data_historis: @mataharinya.data_historis, dua_variabel_keputusan: @mataharinya.dua_variabel_keputusan, imbalan_koresponden: @mataharinya.imbalan_koresponden, intuisi: @mataharinya.intuisi, kemampuan_analisis: @mataharinya.kemampuan_analisis, kuesioner: @mataharinya.kuesioner, linier_programming: @mataharinya.linier_programming, memperagakan_kegiatan: @mataharinya.memperagakan_kegiatan, model_persamaan: @mataharinya.model_persamaan, opini_masyarakat: @mataharinya.opini_masyarakat, periodisasi: @mataharinya.periodisasi, populasi_objek: @mataharinya.populasi_objek, praktek: @mataharinya.praktek, sebagian_objek: @mataharinya.sebagian_objek, subjektif: @mataharinya.subjektif, uji_coba: @mataharinya.uji_coba, variabel_bebas: @mataharinya.variabel_bebas, variable: @mataharinya.variable, waktu: @mataharinya.waktu, waktu_singkat: @mataharinya.waktu_singkat, wawancara_langsung: @mataharinya.wawancara_langsung } }
    end

    assert_redirected_to mataharinya_url(Mataharinya.last)
  end

  test "should show mataharinya" do
    get mataharinya_url(@mataharinya)
    assert_response :success
  end

  test "should get edit" do
    get edit_mataharinya_url(@mataharinya)
    assert_response :success
  end

  test "should update mataharinya" do
    patch mataharinya_url(@mataharinya), params: { mataharinya: { alat_interview: @mataharinya.alat_interview, banyak_staff: @mataharinya.banyak_staff, data_historis: @mataharinya.data_historis, dua_variabel_keputusan: @mataharinya.dua_variabel_keputusan, imbalan_koresponden: @mataharinya.imbalan_koresponden, intuisi: @mataharinya.intuisi, kemampuan_analisis: @mataharinya.kemampuan_analisis, kuesioner: @mataharinya.kuesioner, linier_programming: @mataharinya.linier_programming, memperagakan_kegiatan: @mataharinya.memperagakan_kegiatan, model_persamaan: @mataharinya.model_persamaan, opini_masyarakat: @mataharinya.opini_masyarakat, periodisasi: @mataharinya.periodisasi, populasi_objek: @mataharinya.populasi_objek, praktek: @mataharinya.praktek, sebagian_objek: @mataharinya.sebagian_objek, subjektif: @mataharinya.subjektif, uji_coba: @mataharinya.uji_coba, variabel_bebas: @mataharinya.variabel_bebas, variable: @mataharinya.variable, waktu: @mataharinya.waktu, waktu_singkat: @mataharinya.waktu_singkat, wawancara_langsung: @mataharinya.wawancara_langsung } }
    assert_redirected_to mataharinya_url(@mataharinya)
  end

  test "should destroy mataharinya" do
    assert_difference('Mataharinya.count', -1) do
      delete mataharinya_url(@mataharinya)
    end

    assert_redirected_to mataharinyas_url
  end
end
