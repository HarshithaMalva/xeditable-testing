class ExmsController < ApplicationController
  before_action :set_exm, only: [:show, :edit, :update, :destroy]

  # GET /exms
  # GET /exms.json
  def index
    @exms = Exm.all
  end

  # GET /exms/1
  # GET /exms/1.json
  def show
  end

  # GET /exms/new
  def new
    @exm = Exm.new
  end

  # GET /exms/1/edit
  def edit
  end

  # POST /exms
  # POST /exms.json
  def create
    @exm = Exm.new(exm_params)

    respond_to do |format|
      if @exm.save
        format.html { redirect_to @exm, notice: 'Exm was successfully created.' }
        format.json { render :show, status: :created, location: @exm }
      else
        format.html { render :new }
        format.json { render json: @exm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exms/1
  # PATCH/PUT /exms/1.json
  def update
    respond_to do |format|
      if @exm.update(exm_params)
        format.html { redirect_to @exm, notice: 'Exm was successfully updated.' }
        format.json { render :show, status: :ok, location: @exm }
      else
        format.html { render :edit }
        format.json { render json: @exm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exms/1
  # DELETE /exms/1.json
  def destroy
    @exm.destroy
    respond_to do |format|
      format.html { redirect_to exms_url, notice: 'Exm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exm
      @exm = Exm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exm_params
      params.require(:exm).permit(:name)
    end
end
