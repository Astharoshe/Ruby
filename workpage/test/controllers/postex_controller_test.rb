require 'test_helper'

class PostexControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get postex_index_url
    assert_response :success
  end

  test "should get create" do
    get postex_create_url
    assert_response :success
  end

  test "should get update" do
    get postex_update_url
    assert_response :success
  end

  test "should get delete" do
    get postex_delete_url
    assert_response :success
  end

  test "should get create_form" do
    get postex_create_form_url
    assert_response :success
  end

  test "should get update_form" do
    get postex_update_form_url
    assert_response :success
  end

end
