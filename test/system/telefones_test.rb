require "application_system_test_case"

class TelefonesTest < ApplicationSystemTestCase
  setup do
    @telefone = telefones(:one)
  end

  test "visiting the index" do
    visit telefones_url
    assert_selector "h1", text: "Telefones"
  end

  test "creating a Telefone" do
    visit telefones_url
    click_on "New Telefone"

    fill_in "Contato", with: @telefone.contato_id
    fill_in "Telefone", with: @telefone.telefone
    click_on "Create Telefone"

    assert_text "Telefone was successfully created"
    click_on "Back"
  end

  test "updating a Telefone" do
    visit telefones_url
    click_on "Edit", match: :first

    fill_in "Contato", with: @telefone.contato_id
    fill_in "Telefone", with: @telefone.telefone
    click_on "Update Telefone"

    assert_text "Telefone was successfully updated"
    click_on "Back"
  end

  test "destroying a Telefone" do
    visit telefones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Telefone was successfully destroyed"
  end
end
