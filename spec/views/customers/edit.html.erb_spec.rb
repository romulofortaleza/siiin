require 'rails_helper'

RSpec.describe "customers/edit", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :reason => "MyString",
      :cnpj => "MyString",
      :phone => "MyString",
      :mayor => "MyString",
      :cpf_mayor => "MyString",
      :city_hall => "MyString"
    ))
  end

  it "renders the edit customer form" do
    render

    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do

      assert_select "input[name=?]", "customer[reason]"

      assert_select "input[name=?]", "customer[cnpj]"

      assert_select "input[name=?]", "customer[phone]"

      assert_select "input[name=?]", "customer[mayor]"

      assert_select "input[name=?]", "customer[cpf_mayor]"

      assert_select "input[name=?]", "customer[city_hall]"
    end
  end
end
