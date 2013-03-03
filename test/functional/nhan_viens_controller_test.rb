require 'test_helper'

class NhanViensControllerTest < ActionController::TestCase
  setup do
    @nhan_vien = nhan_viens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nhan_viens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nhan_vien" do
    assert_difference('NhanVien.count') do
      post :create, nhan_vien: @nhan_vien.attributes
    end

    assert_redirected_to nhan_vien_path(assigns(:nhan_vien))
  end

  test "should show nhan_vien" do
    get :show, id: @nhan_vien
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nhan_vien
    assert_response :success
  end

  test "should update nhan_vien" do
    put :update, id: @nhan_vien, nhan_vien: @nhan_vien.attributes
    assert_redirected_to nhan_vien_path(assigns(:nhan_vien))
  end

  test "should destroy nhan_vien" do
    assert_difference('NhanVien.count', -1) do
      delete :destroy, id: @nhan_vien
    end

    assert_redirected_to nhan_viens_path
  end
end
