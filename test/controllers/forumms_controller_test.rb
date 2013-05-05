require 'test_helper'

class ForummsControllerTest < ActionController::TestCase
  setup do
    @forumm = forumms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forumms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forumm" do
    assert_difference('Forumm.count') do
      post :create, forumm: { description: @forumm.description, name: @forumm.name }
    end

    assert_redirected_to forumm_path(assigns(:forumm))
  end

  test "should show forumm" do
    get :show, id: @forumm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forumm
    assert_response :success
  end

  test "should update forumm" do
    patch :update, id: @forumm, forumm: { description: @forumm.description, name: @forumm.name }
    assert_redirected_to forumm_path(assigns(:forumm))
  end

  test "should destroy forumm" do
    assert_difference('Forumm.count', -1) do
      delete :destroy, id: @forumm
    end

    assert_redirected_to forumms_path
  end
end
