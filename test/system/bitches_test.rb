require "application_system_test_case"

class BitchesTest < ApplicationSystemTestCase
  setup do
    @bitch = bitches(:one)
  end

  test "visiting the index" do
    visit bitches_url
    assert_selector "h1", text: "Bitches"
  end

  test "creating a Bitch" do
    visit bitches_url
    click_on "New Bitch"

    fill_in "Bio", with: @bitch.bio
    fill_in "Birthday", with: @bitch.birthday
    fill_in "Name", with: @bitch.name
    click_on "Create Bitch"

    assert_text "Bitch was successfully created"
    click_on "Back"
  end

  test "updating a Bitch" do
    visit bitches_url
    click_on "Edit", match: :first

    fill_in "Bio", with: @bitch.bio
    fill_in "Birthday", with: @bitch.birthday
    fill_in "Name", with: @bitch.name
    click_on "Update Bitch"

    assert_text "Bitch was successfully updated"
    click_on "Back"
  end

  test "destroying a Bitch" do
    visit bitches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bitch was successfully destroyed"
  end
end
