require "application_system_test_case"

class DocumentRegistersTest < ApplicationSystemTestCase
  setup do
    @document_register = document_registers(:one)
  end

  test "visiting the index" do
    visit document_registers_url
    assert_selector "h1", text: "Document Registers"
  end

  test "creating a Document register" do
    visit document_registers_url
    click_on "New Document Register"

    fill_in "Document File", with: @document_register.document_file
    fill_in "Instrument Registrations", with: @document_register.instrument_registrations_id
    fill_in "Name", with: @document_register.name
    click_on "Create Document register"

    assert_text "Document register was successfully created"
    click_on "Back"
  end

  test "updating a Document register" do
    visit document_registers_url
    click_on "Edit", match: :first

    fill_in "Document File", with: @document_register.document_file
    fill_in "Instrument Registrations", with: @document_register.instrument_registrations_id
    fill_in "Name", with: @document_register.name
    click_on "Update Document register"

    assert_text "Document register was successfully updated"
    click_on "Back"
  end

  test "destroying a Document register" do
    visit document_registers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Document register was successfully destroyed"
  end
end
