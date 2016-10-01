class MataharinyasController < ApplicationController
  before_action :set_mataharinya, only: [:show, :edit, :update, :destroy]

  # GET /mataharinyas
  # GET /mataharinyas.json
  def index
    @mataharinyas = Mataharinya.all
  end

  # GET /mataharinyas/1
  # GET /mataharinyas/1.json
  def show
  end

  # GET /mataharinyas/new
  def new
    @mataharinya = Mataharinya.new
  end

  # GET /mataharinyas/1/edit
  def edit
  end

  # POST /mataharinyas
  # POST /mataharinyas.json
  def create
    @mataharinya = Mataharinya.new(mataharinya_params)

    respond_to do |format|
      if @mataharinya.save
        format.html { redirect_to question_steps_path(@mataharinya) }
        format.json { render :show, status: :created, location: @mataharinya }
      else
        format.html { render :new }
        format.json { render json: @mataharinya.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mataharinyas/1
  # PATCH/PUT /mataharinyas/1.json
  def update
    respond_to do |format|
      if @mataharinya.update(mataharinya_params)
        format.html { redirect_to @mataharinya, notice: 'Mataharinya was successfully updated.' }
        format.json { render :show, status: :ok, location: @mataharinya }
      else
        format.html { render :edit }
        format.json { render json: @mataharinya.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mataharinyas/1
  # DELETE /mataharinyas/1.json
  def destroy
    @mataharinya.destroy
    respond_to do |format|
      format.html { redirect_to mataharinyas_url, notice: 'Mataharinya was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mataharinya
      @mataharinya = Mataharinya.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mataharinya_params
      params.require(:mataharinya).permit(:judul, :model_persamaan, :data_historis,
      :variable, :intuisi, :subjektif, :waktu, :periodisasi, :variabel_bebas,
      :kuesioner, :alat_interview, :uji_coba, :dua_variabel_keputusan, :linier_programming,
      :garis_tren, :garis_lurus, :populasi_objek, :banyak_staff, :kemampuan_analisis,
      :wawancara_langsung, :opini_masyarakat, :waktu_singkat, :sebagian_objek,
      :imbalan_koresponden, :memperagakan_kegiatan, :praktek)
    end
end
