require 'rails_helper'

RSpec.describe "customers/new", type: :view do
  before(:each) do
    assign(:customer, Customer.new(
      :reason => "MyString",
      :cnpj => "MyString",
      :phone => "MyString",
      :mayor => "MyString",
      :cpf_mayor => "MyString",
      :city_hall => "MyString"
    ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do

      assert_select "input[name=?]", "customer[reason]"

      assert_select "input[name=?]", "customer[cnpj]"

      assert_select "input[name=?]", "customer[phone]"

      assert_select "input[name=?]", "customer[mayor]"

      assert_select "input[name=?]", "customer[cpf_mayor]"

      assert_select "input[name=?]", "customer[city_hall]"
    end
  end
end
