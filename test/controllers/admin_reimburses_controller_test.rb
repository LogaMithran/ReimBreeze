require "test_helper"

class AdminReimbursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_reimburse = admin_reimburses(:one)
  end

  test "should get index" do
    get admin_reimburses_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_reimburse_url
    assert_response :success
  end

  test "should create admin_reimburse" do
    assert_difference("AdminReimburse.count") do
      post admin_reimburses_url, params: { admin_reimburse: {  } }
    end

    assert_redirected_to admin_reimburse_url(AdminReimburse.last)
  end

  test "should show admin_reimburse" do
    get admin_reimburse_url(@admin_reimburse)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_reimburse_url(@admin_reimburse)
    assert_response :success
  end

  test "should update admin_reimburse" do
    patch admin_reimburse_url(@admin_reimburse), params: { admin_reimburse: {  } }
    assert_redirected_to admin_reimburse_url(@admin_reimburse)
  end

  test "should destroy admin_reimburse" do
    assert_difference("AdminReimburse.count", -1) do
      delete admin_reimburse_url(@admin_reimburse)
    end

    assert_redirected_to admin_reimburses_url
  end
end
