require 'test_helper'

class UserGymInfoRaidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_gym_info_raid = user_gym_info_raids(:one)
  end

  test "should get index" do
    get user_gym_info_raids_url
    assert_response :success
  end

  test "should get new" do
    get new_user_gym_info_raid_url
    assert_response :success
  end

  test "should create user_gym_info_raid" do
    assert_difference('UserGymInfoRaid.count') do
      post user_gym_info_raids_url, params: { user_gym_info_raid: { gym_info_id: @user_gym_info_raid.gym_info_id, raided_on: @user_gym_info_raid.raided_on, user_id: @user_gym_info_raid.user_id } }
    end

    assert_redirected_to user_gym_info_raid_url(UserGymInfoRaid.last)
  end

  test "should show user_gym_info_raid" do
    get user_gym_info_raid_url(@user_gym_info_raid)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_gym_info_raid_url(@user_gym_info_raid)
    assert_response :success
  end

  test "should update user_gym_info_raid" do
    patch user_gym_info_raid_url(@user_gym_info_raid), params: { user_gym_info_raid: { gym_info_id: @user_gym_info_raid.gym_info_id, raided_on: @user_gym_info_raid.raided_on, user_id: @user_gym_info_raid.user_id } }
    assert_redirected_to user_gym_info_raid_url(@user_gym_info_raid)
  end

  test "should destroy user_gym_info_raid" do
    assert_difference('UserGymInfoRaid.count', -1) do
      delete user_gym_info_raid_url(@user_gym_info_raid)
    end

    assert_redirected_to user_gym_info_raids_url
  end
end
