class UserGymInfoRaidsController < ApplicationController
  before_action :set_user_gym_info_raid, only: [:show, :edit, :update, :destroy]

  # GET /user_gym_info_raids
  # GET /user_gym_info_raids.json
  def index
    @user_gym_info_raids = UserGymInfoRaid.all
    @gym_infos = GymInfo.all
  end

  # GET /user_gym_info_raids/1
  # GET /user_gym_info_raids/1.json
  def show
  end

  # GET /user_gym_info_raids/new
  def new
    @user_gym_info_raid = UserGymInfoRaid.new
  end

  # GET /user_gym_info_raids/1/edit
  def edit
  end

  # POST /user_gym_info_raids
  # POST /user_gym_info_raids.json
  def create
    @user_gym_info_raid = UserGymInfoRaid.new(user_gym_info_raid_params)
    @gym_id = params[:user_gym_info_raid][:gym_info_id]
    puts @gym_id
    @user_gym_info_raid.user_id = current_user.id
    @user_gym_info_raid.gym_info_id = @gym_id
    respond_to do |format|
      if @user_gym_info_raid.save
        format.html { redirect_to @user_gym_info_raid, notice: 'User gym info raid was successfully created.' }
        format.json { render :show, status: :created, location: @user_gym_info_raid }
      else
        format.html { render :new }
        format.json { render json: @user_gym_info_raid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_gym_info_raids/1
  # PATCH/PUT /user_gym_info_raids/1.json
  def update
    respond_to do |format|
      if @user_gym_info_raid.update(user_gym_info_raid_params)
        format.html { redirect_to @user_gym_info_raid, notice: 'User gym info raid was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_gym_info_raid }
      else
        format.html { render :edit }
        format.json { render json: @user_gym_info_raid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_gym_info_raids/1
  # DELETE /user_gym_info_raids/1.json
  def destroy
    @user_gym_info_raid.destroy
    respond_to do |format|
      format.html { redirect_to user_gym_info_raids_url, notice: 'User gym info raid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_gym_info_raid
      @user_gym_info_raid = UserGymInfoRaid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_gym_info_raid_params
      params.require(:user_gym_info_raid).permit(:user_id, :gym_info_id, :raided_on)
    end
end
