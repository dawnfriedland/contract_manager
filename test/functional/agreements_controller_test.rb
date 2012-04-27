require 'test_helper'

class AgreementsControllerTest < ActionController::TestCase
  setup do
    @agreement = agreements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agreements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agreement" do
    assert_difference('Agreement.count') do
      post :create, agreement: { contract_manager: @agreement.contract_manager, ipp_agreement_guid: @agreement.ipp_agreement_guid, name: @agreement.name, set_up_complete: @agreement.set_up_complete }
    end

    assert_redirected_to agreement_path(assigns(:agreement))
  end

  test "should show agreement" do
    get :show, id: @agreement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agreement
    assert_response :success
  end

  test "should update agreement" do
    put :update, id: @agreement, agreement: { contract_manager: @agreement.contract_manager, ipp_agreement_guid: @agreement.ipp_agreement_guid, name: @agreement.name, set_up_complete: @agreement.set_up_complete }
    assert_redirected_to agreement_path(assigns(:agreement))
  end

  test "should destroy agreement" do
    assert_difference('Agreement.count', -1) do
      delete :destroy, id: @agreement
    end

    assert_redirected_to agreements_path
  end
end
