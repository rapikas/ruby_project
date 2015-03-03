require 'test_helper'

class AddSejmikSizeToVoivodshipsControllerTest < ActionController::TestCase
  setup do
    @add_sejmik_size_to_voivodship = add_sejmik_size_to_voivodships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_sejmik_size_to_voivodships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_sejmik_size_to_voivodship" do
    assert_difference('AddSejmikSizeToVoivodship.count') do
      post :create, add_sejmik_size_to_voivodship: { sejmik_size: @add_sejmik_size_to_voivodship.sejmik_size }
    end

    assert_redirected_to add_sejmik_size_to_voivodship_path(assigns(:add_sejmik_size_to_voivodship))
  end

  test "should show add_sejmik_size_to_voivodship" do
    get :show, id: @add_sejmik_size_to_voivodship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add_sejmik_size_to_voivodship
    assert_response :success
  end

  test "should update add_sejmik_size_to_voivodship" do
    put :update, id: @add_sejmik_size_to_voivodship, add_sejmik_size_to_voivodship: { sejmik_size: @add_sejmik_size_to_voivodship.sejmik_size }
    assert_redirected_to add_sejmik_size_to_voivodship_path(assigns(:add_sejmik_size_to_voivodship))
  end

  test "should destroy add_sejmik_size_to_voivodship" do
    assert_difference('AddSejmikSizeToVoivodship.count', -1) do
      delete :destroy, id: @add_sejmik_size_to_voivodship
    end

    assert_redirected_to add_sejmik_size_to_voivodships_path
  end
end
