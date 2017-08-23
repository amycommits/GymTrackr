class DashboardController < ApplicationController
  def index
  end
  def user_raids
    @user_raid_list = current_user.user_gym_info_raids.group(:gym_info_id).map{ |s| { gym_id: s.gym_info.id, name: s.gym_info.name, address: s.gym_info.address, raid_date: s.raided_on}}
  end
end
