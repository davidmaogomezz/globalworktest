require "application_system_test_case"

class RoleUsersTest < ApplicationSystemTestCase
  setup do
    @role_user = role_users(:one)
  end

  test "visiting the index" do
    visit role_users_url
    assert_selector "h1", text: "Role Users"
  end

  test "creating a Role user" do
    visit role_users_url
    click_on "New Role User"

    fill_in "Role", with: @role_user.role_id
    fill_in "User", with: @role_user.user_id
    click_on "Create Role user"

    assert_text "Role user was successfully created"
    click_on "Back"
  end

  test "updating a Role user" do
    visit role_users_url
    click_on "Edit", match: :first

    fill_in "Role", with: @role_user.role_id
    fill_in "User", with: @role_user.user_id
    click_on "Update Role user"

    assert_text "Role user was successfully updated"
    click_on "Back"
  end

  test "destroying a Role user" do
    visit role_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Role user was successfully destroyed"
  end
end
