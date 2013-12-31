class CtaController < ApplicationController
  before_action :set_cta, only: [:show, :edit, :update, :destroy]

  # GET /cta
  # GET /cta.json
  def index
    @cta = Cta.all
  end

  # GET /cta/1
  # GET /cta/1.json
  def show
  end

  # GET /cta/new
  def new
    @cta = Cta.new
  end

  # GET /cta/1/edit
  def edit
  end

  # POST /cta
  # POST /cta.json
  def create
    @cta = Cta.new(cta_params)

    respond_to do |format|
      if @cta.save
        format.html { redirect_to @cta, notice: 'cta was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cta }
      else
        format.html { render action: 'new' }
        format.json { render json: @cta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cta/1
  # PATCH/PUT /cta/1.json
  def update
    respond_to do |format|
      if @cta.update(cta_params)
        format.html { redirect_to @cta, notice: 'cta was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cta/1
  # DELETE /cta/1.json
  def destroy
    @cta.destroy
    respond_to do |format|
      format.html { redirect_to cta_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cta
      @cta = cta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cta_params
      params.require(:cta).permit(:cta1_header, :cta1_caption, :cta1_url, :cta1_button, :cta2_header, :cta2_caption, :cta2_url, :cta2_button, :cta3_header, :cta3_caption, :cta3_url, :cta3_button)
    end
end
