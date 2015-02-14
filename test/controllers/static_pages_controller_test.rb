require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get supporters" do
    get :supporters
    assert_response :success
  end

  test "should get donations" do
    get :donations
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
