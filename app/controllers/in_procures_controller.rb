class InProcuresController < ApplicationController
  before_action :set_in_procure, only: [:show, :edit, :update, :destroy]

  # GET /in_procures
  # GET /in_procures.json
  def index
    @in_procures = InProcure.all
  end

  # GET /in_procures/1
  # GET /in_procures/1.json
  def show
  end

  # GET /in_procures/new
  def new
    @in_procure = InProcure.new
  end

  # GET /in_procures/1/edit
  def edit
  end

  # POST /in_procures
  # POST /in_procures.json
  def create
    @in_procure = InProcure.new(in_procure_params)

    respond_to do |format|
      if @in_procure.save
        format.html { redirect_to @in_procure, notice: 'In procure was successfully created.' }
        format.json { render :show, status: :created, location: @in_procure }
      else
        format.html { render :new }
        format.json { render json: @in_procure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /in_procures/1
  # PATCH/PUT /in_procures/1.json
  def update
    respond_to do |format|
      if @in_procure.update(in_procure_params)
        format.html { redirect_to @in_procure, notice: 'In procure was successfully updated.' }
        format.json { render :show, status: :ok, location: @in_procure }
      else
        format.html { render :edit }
        format.json { render json: @in_procure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /in_procures/1
  # DELETE /in_procures/1.json
  def destroy
    @in_procure.destroy
    respond_to do |format|
      format.html { redirect_to in_procures_url, notice: 'In procure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_in_procure
      @in_procure = InProcure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def in_procure_params
      params.require(:in_procure).permit(:procure, :date_procure, :note)
    end
end
