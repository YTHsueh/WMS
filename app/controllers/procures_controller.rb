class ProcuresController < ApplicationController
  before_action :set_procure, only: [:show, :edit, :update, :destroy]

  # GET /procures
  # GET /procures.json
  def index
    @procures = Procure.page(params[:page]).per(10)
  end

  # GET /procures/1
  # GET /procures/1.json
  def show
  end

  # GET /procures/new
  def new
    @procure = Procure.new
  end

  # GET /procures/1/edit
  def edit
  end

  # POST /procures
  # POST /procures.json
  def create
    @procure = Procure.new(procure_params)

    respond_to do |format|
      if @procure.save
        format.html { redirect_to @procure, notice: 'Procure was successfully created.' }
        format.json { render :show, status: :created, location: @procure }
      else
        format.html { render :new }
        format.json { render json: @procure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /procures/1
  # PATCH/PUT /procures/1.json
  def update
    respond_to do |format|
      if @procure.update(procure_params)
        format.html { redirect_to @procure, notice: 'Procure was successfully updated.' }
        format.json { render :show, status: :ok, location: @procure }
      else
        format.html { render :edit }
        format.json { render json: @procure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /procures/1
  # DELETE /procures/1.json
  def destroy
    @procure.destroy
    respond_to do |format|
      format.html { redirect_to procures_url, notice: 'Procure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_procure
      @procure = Procure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def procure_params
      safe_attributes = [
        :serial, 
        :date, 
        :note, 
        projects_attributes: [
          :name, 
          :id, 
          :_destroy 
        ]
      ]
      params.require(:procure).permit(safe_attributes)
    end
end
