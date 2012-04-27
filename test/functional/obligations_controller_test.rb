require 'test_helper'

class ObligationsControllerTest < ActionController::TestCase
  setup do
    @obligation = obligations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:obligations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create obligation" do
    assert_difference('Obligation.count') do
      post :create, obligation: { amount: @obligation.amount, date_met: @obligation.date_met, description: @obligation.description, due_date: @obligation.due_date, invoice_number: @obligation.invoice_number, met: @obligation.met, monetary: @obligation.monetary, name: @obligation.name }
    end

    assert_redirected_to obligation_path(assigns(:obligation))
  end

  test "should show obligation" do
    get :show, id: @obligation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @obligation
    assert_response :success
  end

  test "should update obligation" do
    put :update, id: @obligation, obligation: { amount: @obligation.amount, date_met: @obligation.date_met, description: @obligation.description, due_date: @obligation.due_date, invoice_number: @obligation.invoice_number, met: @obligation.met, monetary: @obligation.monetary, name: @obligation.name }
    assert_redirected_to obligation_path(assigns(:obligation))
  end

  test "should destroy obligation" do
    assert_difference('Obligation.count', -1) do
      delete :destroy, id: @obligation
    end

    assert_redirected_to obligations_path
  end
end
