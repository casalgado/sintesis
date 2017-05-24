require 'test_helper'

class EntriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get entries_index_url
    assert_response :success
  end

  test "should get show" do
    get entries_show_url
    assert_response :success
  end

  test "should get edit" do
    get entries_edit_url
    assert_response :success
  end

  test "should get update" do
    get entries_update_url
    assert_response :success
  end

end
