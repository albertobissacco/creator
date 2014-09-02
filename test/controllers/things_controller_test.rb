require 'test_helper'

class ThingsControllerTest < ActionController::TestCase
  setup do
    @thing = things(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:things)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thing" do
    assert_difference('Thing.count') do
      post :create, thing: { creator_id: @thing.creator_id, creator_type: @thing.creator_type, description: @thing.description, name: @thing.name, type_id: @thing.type_id }
    end

    assert_redirected_to thing_path(assigns(:thing))
  end

  test "should show thing" do
    get :show, id: @thing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thing
    assert_response :success
  end

  test "should update thing" do
    patch :update, id: @thing, thing: { creator_id: @thing.creator_id, creator_type: @thing.creator_type, description: @thing.description, name: @thing.name, type_id: @thing.type_id }
    assert_redirected_to thing_path(assigns(:thing))
  end

  test "should destroy thing" do
    assert_difference('Thing.count', -1) do
      delete :destroy, id: @thing
    end

    assert_redirected_to things_path
  end
end
