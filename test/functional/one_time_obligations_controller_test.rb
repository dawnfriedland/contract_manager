require 'test_helper'

class OneTimeObligationsControllerTest < ActionController::TestCase
  setup do
    @one_time_obligation = one_time_obligations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:one_time_obligations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create one_time_obligation" do
    assert_difference('OneTimeObligation.count') do
      post :create, one_time_obligation: { amount: @one_time_obligation.amount, due_date: @one_time_obligation.due_date, is_dependent: @one_time_obligation.is_dependent, monetary: @one_time_obligation.monetary, name: @one_time_obligation.name, obligation_rule_id: @one_time_obligation.obligation_rule_id }
    end

    assert_redirected_to one_time_obligation_path(assigns(:one_time_obligation))
  end

  test "should show one_time_obligation" do
    get :show, id: @one_time_obligation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @one_time_obligation
    assert_response :success
  end

  test "should update one_time_obligation" do
    put :update, id: @one_time_obligation, one_time_obligation: { amount: @one_time_obligation.amount, due_date: @one_time_obligation.due_date, is_dependent: @one_time_obligation.is_dependent, monetary: @one_time_obligation.monetary, name: @one_time_obligation.name, obligation_rule_id: @one_time_obligation.obligation_rule_id }
    assert_redirected_to one_time_obligation_path(assigns(:one_time_obligation))
  end

  test "should destroy one_time_obligation" do
    assert_difference('OneTimeObligation.count', -1) do
      delete :destroy, id: @one_time_obligation
    end

    assert_redirected_to one_time_obligations_path
  end
end
