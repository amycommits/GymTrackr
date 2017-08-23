require 'test_helper'

class GymInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gym_info = gym_infos(:one)
  end

  test "should get index" do
    get gym_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_gym_info_url
    assert_response :success
  end

  test "should create gym_info" do
    assert_difference('GymInfo.count') do
      post gym_infos_url, params: { gym_info: { address: @gym_info.address, latitude: @gym_info.latitude, longitude: @gym_info.longitude, name: @gym_info.name } }
    end

    assert_redirected_to gym_info_url(GymInfo.last)
  end

  test "should show gym_info" do
    get gym_info_url(@gym_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_gym_info_url(@gym_info)
    assert_response :success
  end

  test "should update gym_info" do
    patch gym_info_url(@gym_info), params: { gym_info: { address: @gym_info.address, latitude: @gym_info.latitude, longitude: @gym_info.longitude, name: @gym_info.name } }
    assert_redirected_to gym_info_url(@gym_info)
  end

  test "should destroy gym_info" do
    assert_difference('GymInfo.count', -1) do
      delete gym_info_url(@gym_info)
    end

    assert_redirected_to gym_infos_url
  end
end
