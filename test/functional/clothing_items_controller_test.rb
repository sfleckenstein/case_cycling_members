require 'test_helper'

class ClothingItemsControllerTest < ActionController::TestCase
  setup do
    @clothing_item = clothing_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clothing_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clothing_item" do
    assert_difference('ClothingItem.count') do
      post :create, clothing_item: { name: @clothing_item.name, picture_url: @clothing_item.picture_url }
    end

    assert_redirected_to clothing_item_path(assigns(:clothing_item))
  end

  test "should show clothing_item" do
    get :show, id: @clothing_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clothing_item
    assert_response :success
  end

  test "should update clothing_item" do
    put :update, id: @clothing_item, clothing_item: { name: @clothing_item.name, picture_url: @clothing_item.picture_url }
    assert_redirected_to clothing_item_path(assigns(:clothing_item))
  end

  test "should destroy clothing_item" do
    assert_difference('ClothingItem.count', -1) do
      delete :destroy, id: @clothing_item
    end

    assert_redirected_to clothing_items_path
  end
end
