require 'test_helper'

class ElectoralDistrictsControllerTest < ActionController::TestCase
  setup do
    @electoral_district = electoral_districts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:electoral_districts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create electoral_district" do
    assert_difference('ElectoralDistrict.count') do
      post :create, electoral_district: { name: @electoral_district.name, valid_votes: @electoral_district.valid_votes }
    end

    assert_redirected_to electoral_district_path(assigns(:electoral_district))
  end

  test "should show electoral_district" do
    get :show, id: @electoral_district
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @electoral_district
    assert_response :success
  end

  test "should update electoral_district" do
    put :update, id: @electoral_district, electoral_district: { name: @electoral_district.name, valid_votes: @electoral_district.valid_votes }
    assert_redirected_to electoral_district_path(assigns(:electoral_district))
  end

  test "should destroy electoral_district" do
    assert_difference('ElectoralDistrict.count', -1) do
      delete :destroy, id: @electoral_district
    end

    assert_redirected_to electoral_districts_path
  end
end
