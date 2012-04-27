require 'test_helper'

class ReoccuringObligationsControllerTest < ActionController::TestCase
  setup do
    @reoccuring_obligation = reoccuring_obligations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reoccuring_obligations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reoccuring_obligation" do
    assert_difference('ReoccuringObligation.count') do
      post :create, reoccuring_obligation: { amount: @reoccuring_obligation.amount, duration: @reoccuring_obligation.duration, duration_period: @reoccuring_obligation.duration_period, end_date: @reoccuring_obligation.end_date, frequency: @reoccuring_obligation.frequency, frequency_period: @reoccuring_obligation.frequency_period, is_dependent: @reoccuring_obligation.is_dependent, monetary: @reoccuring_obligation.monetary, name: @reoccuring_obligation.name, obligation_rule_id: @reoccuring_obligation.obligation_rule_id, start_date: @reoccuring_obligation.start_date }
    end

    assert_redirected_to reoccuring_obligation_path(assigns(:reoccuring_obligation))
  end

  test "should show reoccuring_obligation" do
    get :show, id: @reoccuring_obligation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reoccuring_obligation
    assert_response :success
  end

  test "should update reoccuring_obligation" do
    put :update, id: @reoccuring_obligation, reoccuring_obligation: { amount: @reoccuring_obligation.amount, duration: @reoccuring_obligation.duration, duration_period: @reoccuring_obligation.duration_period, end_date: @reoccuring_obligation.end_date, frequency: @reoccuring_obligation.frequency, frequency_period: @reoccuring_obligation.frequency_period, is_dependent: @reoccuring_obligation.is_dependent, monetary: @reoccuring_obligation.monetary, name: @reoccuring_obligation.name, obligation_rule_id: @reoccuring_obligation.obligation_rule_id, start_date: @reoccuring_obligation.start_date }
    assert_redirected_to reoccuring_obligation_path(assigns(:reoccuring_obligation))
  end

  test "should destroy reoccuring_obligation" do
    assert_difference('ReoccuringObligation.count', -1) do
      delete :destroy, id: @reoccuring_obligation
    end

    assert_redirected_to reoccuring_obligations_path
  end
end
