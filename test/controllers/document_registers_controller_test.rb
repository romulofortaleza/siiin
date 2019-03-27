require 'test_helper'

class DocumentRegistersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @document_register = document_registers(:one)
  end

  test "should get index" do
    get document_registers_url
    assert_response :success
  end

  test "should get new" do
    get new_document_register_url
    assert_response :success
  end

  test "should create document_register" do
    assert_difference('DocumentRegister.count') do
      post document_registers_url, params: { document_register: { document_file: @document_register.document_file, instrument_registrations_id: @document_register.instrument_registrations_id, name: @document_register.name } }
    end

    assert_redirected_to document_register_url(DocumentRegister.last)
  end

  test "should show document_register" do
    get document_register_url(@document_register)
    assert_response :success
  end

  test "should get edit" do
    get edit_document_register_url(@document_register)
    assert_response :success
  end

  test "should update document_register" do
    patch document_register_url(@document_register), params: { document_register: { document_file: @document_register.document_file, instrument_registrations_id: @document_register.instrument_registrations_id, name: @document_register.name } }
    assert_redirected_to document_register_url(@document_register)
  end

  test "should destroy document_register" do
    assert_difference('DocumentRegister.count', -1) do
      delete document_register_url(@document_register)
    end

    assert_redirected_to document_registers_url
  end
end
