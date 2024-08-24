require "test_helper"

class EmployeeReimbursementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_reimbursement = employee_reimbursements(:one)
  end

  test "should get index" do
    get employee_reimbursements_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_reimbursement_url
    assert_response :success
  end

  test "should create employee_reimbursement" do
    assert_difference("EmployeeReimbursement.count") do
      post employee_reimbursements_url, params: { employee_reimbursement: { amount: @employee_reimbursement.amount, employee_email: @employee_reimbursement.employee_email, employee_name: @employee_reimbursement.employee_name, type: @employee_reimbursement.type } }
    end

    assert_redirected_to employee_reimbursement_url(EmployeeReimbursement.last)
  end

  test "should show employee_reimbursement" do
    get employee_reimbursement_url(@employee_reimbursement)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_reimbursement_url(@employee_reimbursement)
    assert_response :success
  end

  test "should update employee_reimbursement" do
    patch employee_reimbursement_url(@employee_reimbursement), params: { employee_reimbursement: { amount: @employee_reimbursement.amount, employee_email: @employee_reimbursement.employee_email, employee_name: @employee_reimbursement.employee_name, type: @employee_reimbursement.type } }
    assert_redirected_to employee_reimbursement_url(@employee_reimbursement)
  end

  test "should destroy employee_reimbursement" do
    assert_difference("EmployeeReimbursement.count", -1) do
      delete employee_reimbursement_url(@employee_reimbursement)
    end

    assert_redirected_to employee_reimbursements_url
  end
end
