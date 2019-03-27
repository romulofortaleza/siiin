require 'test_helper'

class InstrumentRegistrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @instrument_registration = instrument_registrations(:one)
  end

  test "should get index" do
    get instrument_registrations_url
    assert_response :success
  end

  test "should get new" do
    get new_instrument_registration_url
    assert_response :success
  end

  test "should create instrument_registration" do
    assert_difference('InstrumentRegistration.count') do
      post instrument_registrations_url, params: { instrument_registration: { address: @instrument_registration.address, counterpart_value: @instrument_registration.counterpart_value, end_date: @instrument_registration.end_date, existence_im: @instrument_registration.existence_im, extra_number: @instrument_registration.extra_number, granting_organ: @instrument_registration.granting_organ, instituition_name: @instrument_registration.instituition_name, instrument_number: @instrument_registration.instrument_number, internal_number: @instrument_registration.internal_number, linked_organ: @instrument_registration.linked_organ, object_agreement: @instrument_registration.object_agreement, open_date: @instrument_registration.open_date, organ: @instrument_registration.organ, signature: @instrument_registration.signature, signature_date: @instrument_registration.signature_date, suspensive_date: @instrument_registration.suspensive_date, total: @instrument_registration.total, type: @instrument_registration.type, user: @instrument_registration.user, value_transfer: @instrument_registration.value_transfer } }
    end

    assert_redirected_to instrument_registration_url(InstrumentRegistration.last)
  end

  test "should show instrument_registration" do
    get instrument_registration_url(@instrument_registration)
    assert_response :success
  end

  test "should get edit" do
    get edit_instrument_registration_url(@instrument_registration)
    assert_response :success
  end

  test "should update instrument_registration" do
    patch instrument_registration_url(@instrument_registration), params: { instrument_registration: { address: @instrument_registration.address, counterpart_value: @instrument_registration.counterpart_value, end_date: @instrument_registration.end_date, existence_im: @instrument_registration.existence_im, extra_number: @instrument_registration.extra_number, granting_organ: @instrument_registration.granting_organ, instituition_name: @instrument_registration.instituition_name, instrument_number: @instrument_registration.instrument_number, internal_number: @instrument_registration.internal_number, linked_organ: @instrument_registration.linked_organ, object_agreement: @instrument_registration.object_agreement, open_date: @instrument_registration.open_date, organ: @instrument_registration.organ, signature: @instrument_registration.signature, signature_date: @instrument_registration.signature_date, suspensive_date: @instrument_registration.suspensive_date, total: @instrument_registration.total, type: @instrument_registration.type, user: @instrument_registration.user, value_transfer: @instrument_registration.value_transfer } }
    assert_redirected_to instrument_registration_url(@instrument_registration)
  end

  test "should destroy instrument_registration" do
    assert_difference('InstrumentRegistration.count', -1) do
      delete instrument_registration_url(@instrument_registration)
    end

    assert_redirected_to instrument_registrations_url
  end
end
