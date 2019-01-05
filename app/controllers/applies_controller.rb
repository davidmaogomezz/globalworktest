class AppliesController < ApplicationController

  before_action :authenticate_user!, except: [:new, :create]
  before_action :set_apply, only: [:show, :edit, :update, :destroy]
  

  # GET /applies
  # GET /applies.json
  def index
    @applies = Apply.all
  end

  # GET /applies/1
  # GET /applies/1.json
  def show
  end

  # GET /applies/new
  def new
    @apply = Apply.new
  end

  # GET /applies/1/edit
  def edit
  end

  # POST /applies
  # POST /applies.json
  def create
    @apply = Apply.new(apply_params)
    @messages = ""
    @alert = "danger"
    begin
      if @apply.valid?
        if @apply.save
          @messages = "Datos grabados con éxito."
          @alert = "success"
        else
          @messages = "Los datos no se pudieron guardar. #{@apply.errors.messages}"
        end
      else
        @messages = "Por favor verifique los datos. #{@apply.errors.messages}"
      end
    rescue Exception => e
      @messages = "Por favor ingrese todos los campos"
    end
    respond_to do |format|
      format.js {}
    end    
  end

  # PATCH/PUT /applies/1
  # PATCH/PUT /applies/1.json
  def update
    respond_to do |format|
      if @apply.update(apply_params)
        format.html { redirect_to @apply, notice: 'Apply was successfully updated.' }
        format.json { render :show, status: :ok, location: @apply }
      else
        format.html { render :edit }
        format.json { render json: @apply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applies/1
  # DELETE /applies/1.json
  def destroy
    begin
      @apply.destroy
    rescue => error
    end    
    respond_to do |format|
      format.html { redirect_to applies_url, notice: 'Apply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apply
      @apply = Apply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apply_params
      params.require(:apply).permit(:name_candidate, :last_name_candidate, :number_document, :vacancy_id, :birthdate, :phone)
    end
end
