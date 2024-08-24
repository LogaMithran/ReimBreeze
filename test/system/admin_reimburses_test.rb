require "application_system_test_case"

class AdminReimbursesTest < ApplicationSystemTestCase
  setup do
    @admin_reimburse = admin_reimburses(:one)
  end

  test "visiting the index" do
    visit admin_reimburses_url
    assert_selector "h1", text: "Admin reimburses"
  end

  test "should create admin reimburse" do
    visit admin_reimburses_url
    click_on "New admin reimburse"

    click_on "Create Admin reimburse"

    assert_text "Admin reimburse was successfully created"
    click_on "Back"
  end

  test "should update Admin reimburse" do
    visit admin_reimburse_url(@admin_reimburse)
    click_on "Edit this admin reimburse", match: :first

    click_on "Update Admin reimburse"

    assert_text "Admin reimburse was successfully updated"
    click_on "Back"
  end

  test "should destroy Admin reimburse" do
    visit admin_reimburse_url(@admin_reimburse)
    click_on "Destroy this admin reimburse", match: :first

    assert_text "Admin reimburse was successfully destroyed"
  end
end
