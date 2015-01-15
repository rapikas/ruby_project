require 'test_helper'

class VoivodshipCommitteesControllerTest < ActionController::TestCase
  setup do
    @voivodship_committee = voivodship_committees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voivodship_committees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voivodship_committee" do
    assert_difference('VoivodshipCommittee.count') do
      post :create, voivodship_committee: {  }
    end

    assert_redirected_to voivodship_committee_path(assigns(:voivodship_committee))
  end

  test "should show voivodship_committee" do
    get :show, id: @voivodship_committee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voivodship_committee
    assert_response :success
  end

  test "should update voivodship_committee" do
    put :update, id: @voivodship_committee, voivodship_committee: {  }
    assert_redirected_to voivodship_committee_path(assigns(:voivodship_committee))
  end

  test "should destroy voivodship_committee" do
    assert_difference('VoivodshipCommittee.count', -1) do
      delete :destroy, id: @voivodship_committee
    end

    assert_redirected_to voivodship_committees_path
  end
end
