require "application_system_test_case"

class InstrumentRegistrationsTest < ApplicationSystemTestCase
  setup do
    @instrument_registration = instrument_registrations(:one)
  end

  test "visiting the index" do
    visit instrument_registrations_url
    assert_selector "h1", text: "Instrument Registrations"
  end

  test "creating a Instrument registration" do
    visit instrument_registrations_url
    click_on "New Instrument Registration"

    fill_in "Address", with: @instrument_registration.address
    fill_in "Counterpart Value", with: @instrument_registration.counterpart_value
    fill_in "End Date", with: @instrument_registration.end_date
    fill_in "Existence Im", with: @instrument_registration.existence_im
    fill_in "Extra Number", with: @instrument_registration.extra_number
    fill_in "Granting Organ", with: @instrument_registration.granting_organ
    fill_in "Instituition Name", with: @instrument_registration.instituition_name
    fill_in "Instrument Number", with: @instrument_registration.instrument_number
    fill_in "Internal Number", with: @instrument_registration.internal_number
    fill_in "Linked Organ", with: @instrument_registration.linked_organ
    fill_in "Object Agreement", with: @instrument_registration.object_agreement
    fill_in "Open Date", with: @instrument_registration.open_date
    fill_in "Organ", with: @instrument_registration.organ
    fill_in "Signature", with: @instrument_registration.signature
    fill_in "Signature Date", with: @instrument_registration.signature_date
    fill_in "Suspensive Date", with: @instrument_registration.suspensive_date
    fill_in "Total", with: @instrument_registration.total
    fill_in "Type", with: @instrument_registration.type
    fill_in "User", with: @instrument_registration.user
    fill_in "Value Transfer", with: @instrument_registration.value_transfer
    click_on "Create Instrument registration"

    assert_text "Instrument registration was successfully created"
    click_on "Back"
  end

  test "updating a Instrument registration" do
    visit instrument_registrations_url
    click_on "Edit", match: :first

    fill_in "Address", with: @instrument_registration.address
    fill_in "Counterpart Value", with: @instrument_registration.counterpart_value
    fill_in "End Date", with: @instrument_registration.end_date
    fill_in "Existence Im", with: @instrument_registration.existence_im
    fill_in "Extra Number", with: @instrument_registration.extra_number
    fill_in "Granting Organ", with: @instrument_registration.granting_organ
    fill_in "Instituition Name", with: @instrument_registration.instituition_name
    fill_in "Instrument Number", with: @instrument_registration.instrument_number
    fill_in "Internal Number", with: @instrument_registration.internal_number
    fill_in "Linked Organ", with: @instrument_registration.linked_organ
    fill_in "Object Agreement", with: @instrument_registration.object_agreement
    fill_in "Open Date", with: @instrument_registration.open_date
    fill_in "Organ", with: @instrument_registration.organ
    fill_in "Signature", with: @instrument_registration.signature
    fill_in "Signature Date", with: @instrument_registration.signature_date
    fill_in "Suspensive Date", with: @instrument_registration.suspensive_date
    fill_in "Total", with: @instrument_registration.total
    fill_in "Type", with: @instrument_registration.type
    fill_in "User", with: @instrument_registration.user
    fill_in "Value Transfer", with: @instrument_registration.value_transfer
    click_on "Update Instrument registration"

    assert_text "Instrument registration was successfully updated"
    click_on "Back"
  end

  test "destroying a Instrument registration" do
    visit instrument_registrations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Instrument registration was successfully destroyed"
  end
end
