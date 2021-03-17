require "application_system_test_case"

class ManagesTest < ApplicationSystemTestCase
  setup do
    @manage = manages(:one)
  end

  test "visiting the index" do
    visit manages_url
    assert_selector "h1", text: "Manages"
  end

  test "creating a Manage" do
    visit manages_url
    click_on "New Manage"

    click_on "Create Manage"

    assert_text "Manage was successfully created"
    click_on "Back"
  end

  test "updating a Manage" do
    visit manages_url
    click_on "Edit", match: :first

    click_on "Update Manage"

    assert_text "Manage was successfully updated"
    click_on "Back"
  end

  test "destroying a Manage" do
    visit manages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Manage was successfully destroyed"
  end
end
