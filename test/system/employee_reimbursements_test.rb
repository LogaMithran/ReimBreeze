require "application_system_test_case"

class EmployeeReimbursementsTest < ApplicationSystemTestCase
  setup do
    @employee_reimbursement = employee_reimbursements(:one)
  end

  test "visiting the index" do
    visit employee_reimbursements_url
    assert_selector "h1", text: "Employee reimbursements"
  end

  test "should create employee reimbursement" do
    visit employee_reimbursements_url
    click_on "New employee reimbursement"

    fill_in "Amount", with: @employee_reimbursement.amount
    fill_in "Employee email", with: @employee_reimbursement.employee_email
    fill_in "Employee name", with: @employee_reimbursement.employee_name
    fill_in "Type", with: @employee_reimbursement.type
    click_on "Create Employee reimbursement"

    assert_text "Employee reimbursement was successfully created"
    click_on "Back"
  end

  test "should update Employee reimbursement" do
    visit employee_reimbursement_url(@employee_reimbursement)
    click_on "Edit this employee reimbursement", match: :first

    fill_in "Amount", with: @employee_reimbursement.amount
    fill_in "Employee email", with: @employee_reimbursement.employee_email
    fill_in "Employee name", with: @employee_reimbursement.employee_name
    fill_in "Type", with: @employee_reimbursement.type
    click_on "Update Employee reimbursement"

    assert_text "Employee reimbursement was successfully updated"
    click_on "Back"
  end

  test "should destroy Employee reimbursement" do
    visit employee_reimbursement_url(@employee_reimbursement)
    click_on "Destroy this employee reimbursement", match: :first

    assert_text "Employee reimbursement was successfully destroyed"
  end
end
