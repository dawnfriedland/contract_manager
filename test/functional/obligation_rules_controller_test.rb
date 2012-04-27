require 'test_helper'

class ObligationRulesControllerTest < ActionController::TestCase
  setup do
    @obligation_rule = obligation_rules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:obligation_rules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create obligation_rule" do
    assert_difference('ObligationRule.count') do
      post :create, obligation_rule: { agreement_id: @obligation_rule.agreement_id, description: @obligation_rule.description, name: @obligation_rule.name, repeat: @obligation_rule.repeat, type: @obligation_rule.type }
    end

    assert_redirected_to obligation_rule_path(assigns(:obligation_rule))
  end

  test "should show obligation_rule" do
    get :show, id: @obligation_rule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @obligation_rule
    assert_response :success
  end

  test "should update obligation_rule" do
    put :update, id: @obligation_rule, obligation_rule: { agreement_id: @obligation_rule.agreement_id, description: @obligation_rule.description, name: @obligation_rule.name, repeat: @obligation_rule.repeat, type: @obligation_rule.type }
    assert_redirected_to obligation_rule_path(assigns(:obligation_rule))
  end

  test "should destroy obligation_rule" do
    assert_difference('ObligationRule.count', -1) do
      delete :destroy, id: @obligation_rule
    end

    assert_redirected_to obligation_rules_path
  end
end
