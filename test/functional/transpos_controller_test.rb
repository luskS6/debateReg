require 'test_helper'

class TransposControllerTest < ActionController::TestCase
  setup do
    @transpo = transpos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transpos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transpo" do
    assert_difference('Transpo.count') do
      post :create, transpo: { fpickup: @transpo.fpickup, fpickup_number: @transpo.fpickup_number, fpickup_time: @transpo.fpickup_time, school_id: @transpo.school_id, sdropoff: @transpo.sdropoff, sdropoff_number: @transpo.sdropoff_number, sdropoff_time: @transpo.sdropoff_time, spickup: @transpo.spickup, spickup_number: @transpo.spickup_number, spickup_time: @transpo.spickup_time }
    end

    assert_redirected_to transpo_path(assigns(:transpo))
  end

  test "should show transpo" do
    get :show, id: @transpo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transpo
    assert_response :success
  end

  test "should update transpo" do
    put :update, id: @transpo, transpo: { fpickup: @transpo.fpickup, fpickup_number: @transpo.fpickup_number, fpickup_time: @transpo.fpickup_time, school_id: @transpo.school_id, sdropoff: @transpo.sdropoff, sdropoff_number: @transpo.sdropoff_number, sdropoff_time: @transpo.sdropoff_time, spickup: @transpo.spickup, spickup_number: @transpo.spickup_number, spickup_time: @transpo.spickup_time }
    assert_redirected_to transpo_path(assigns(:transpo))
  end

  test "should destroy transpo" do
    assert_difference('Transpo.count', -1) do
      delete :destroy, id: @transpo
    end

    assert_redirected_to transpos_path
  end
end
