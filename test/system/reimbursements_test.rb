require "application_system_test_case"

class ReimbursementsTest < ApplicationSystemTestCase
  setup do
    @reimbursement = reimbursements(:one)
  end

  test "visiting the index" do
    visit reimbursements_url
    assert_selector "h1", text: "Reimbursements"
  end

  test "should create reimbursement" do
    visit reimbursements_url
    click_on "New reimbursement"

    fill_in "Amount", with: @reimbursement.amount
    fill_in "Employee email", with: @reimbursement.employee_email
    fill_in "Employee name", with: @reimbursement.employee_name
    fill_in "Type", with: @reimbursement.type
    click_on "Create Reimbursement"

    assert_text "Reimbursement was successfully created"
    click_on "Back"
  end

  test "should update Reimbursement" do
    visit reimbursement_url(@reimbursement)
    click_on "Edit this reimbursement", match: :first

    fill_in "Amount", with: @reimbursement.amount
    fill_in "Employee email", with: @reimbursement.employee_email
    fill_in "Employee name", with: @reimbursement.employee_name
    fill_in "Type", with: @reimbursement.type
    click_on "Update Reimbursement"

    assert_text "Reimbursement was successfully updated"
    click_on "Back"
  end

  test "should destroy Reimbursement" do
    visit reimbursement_url(@reimbursement)
    click_on "Destroy this reimbursement", match: :first

    assert_text "Reimbursement was successfully destroyed"
  end
end
