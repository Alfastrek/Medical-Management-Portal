require "application_system_test_case"

class ReceptionistsTest < ApplicationSystemTestCase
  setup do
    @receptionist = receptionists(:one)
  end

  test "visiting the index" do
    visit receptionists_url
    assert_selector "h1", text: "Receptionists"
  end

  test "should create receptionist" do
    visit receptionists_url
    click_on "New receptionist"

    fill_in "Name", with: @receptionist.name
    click_on "Create Receptionist"

    assert_text "Receptionist was successfully created"
    click_on "Back"
  end

  test "should update Receptionist" do
    visit receptionist_url(@receptionist)
    click_on "Edit this receptionist", match: :first

    fill_in "Name", with: @receptionist.name
    click_on "Update Receptionist"

    assert_text "Receptionist was successfully updated"
    click_on "Back"
  end

  test "should destroy Receptionist" do
    visit receptionist_url(@receptionist)
    click_on "Destroy this receptionist", match: :first

    assert_text "Receptionist was successfully destroyed"
  end
end
