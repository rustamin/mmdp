class QuestionStepsController < ApplicationController
  include Wicked::Wizard
  steps :step_1, :step_2a, :step_2b, :step_3a, :step_3b, :step_3c

  def show
    @mataharinya = Mataharinya.find(params[:matahari_id])
    render_wizard
  end

  def update
    @mataharinya = Mataharinya.find(params[:matahari_id])
    @mataharinya.update(mataharinya_params)
    render_wizard @mataharinya
  end

  private
    def mataharinya_params
      params.require(:mataharinya).permit(:judul, :model_persamaan, :data_historis,
      :variable, :intuisi, :subjektif, :waktu, :periodisasi, :variabel_bebas,
      :kuesioner, :alat_interview, :uji_coba, :dua_variabel_keputusan, :linier_programming,
      :garis_tren, :garis_lurus, :populasi_objek, :banyak_staff, :kemampuan_analisis,
      :wawancara_langsung, :opini_masyarakat, :waktu_singkat, :sebagian_objek,
      :imbalan_koresponden, :memperagakan_kegiatan, :praktek)
    end
end
