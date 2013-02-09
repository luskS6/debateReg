require 'test_helper'

class AdminsControllerTest < ActionController::TestCase
  setup do
    @admin = admins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin" do
    assert_difference('Admin.count') do
      post :create, admin: { contact1: @admin.contact1, contact2: @admin.contact2, early_invoice: @admin.early_invoice, phoneNum1: @admin.phoneNum1, phoneNum2: @admin.phoneNum2, school_id: @admin.school_id }
    end

    assert_redirected_to admin_path(assigns(:admin))
  end

  test "should show admin" do
    get :show, id: @admin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin
    assert_response :success
  end

  test "should update admin" do
    put :update, id: @admin, admin: { contact1: @admin.contact1, contact2: @admin.contact2, early_invoice: @admin.early_invoice, phoneNum1: @admin.phoneNum1, phoneNum2: @admin.phoneNum2, school_id: @admin.school_id }
    assert_redirected_to admin_path(assigns(:admin))
  end

  test "should destroy admin" do
    assert_difference('Admin.count', -1) do
      delete :destroy, id: @admin
    end

    assert_redirected_to admins_path
  end
end
