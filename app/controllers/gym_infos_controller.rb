class GymInfosController < ApplicationController
  before_action :set_gym_info, only: [:show, :edit, :update, :destroy]

  # GET /gym_infos
  # GET /gym_infos.json
  def index
    @gym_infos = GymInfo.all
  end

  # GET /add_raids
  # GET /add_raids.json
  def add_raids
    @gym_infos = GymInfo.all
  end

  # GET /gym_infos/1
  # GET /gym_infos/1.json
  def show
  end

  # GET /gym_infos/new
  def new
    @gym_info = GymInfo.new
  end

  # GET /gym_infos/1/edit
  def edit
  end

  # POST /gym_infos
  # POST /gym_infos.json
  def create
    @gym_info = GymInfo.new(gym_info_params)

    respond_to do |format|
      if @gym_info.save
        format.html { redirect_to @gym_info, notice: 'Gym info was successfully created.' }
        format.json { render :show, status: :created, location: @gym_info }
      else
        format.html { render :new }
        format.json { render json: @gym_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gym_infos/1
  # PATCH/PUT /gym_infos/1.json
  def update
    respond_to do |format|
      if @gym_info.update(gym_info_params)
        format.html { redirect_to @gym_info, notice: 'Gym info was successfully updated.' }
        format.json { render :show, status: :ok, location: @gym_info }
      else
        format.html { render :edit }
        format.json { render json: @gym_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gym_infos/1
  # DELETE /gym_infos/1.json
  def destroy
    @gym_info.destroy
    respond_to do |format|
      format.html { redirect_to gym_infos_url, notice: 'Gym info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gym_info
      @gym_info = GymInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gym_info_params
      params.require(:gym_info).permit(:name, :address, :latitude, :longitude)
    end
end
