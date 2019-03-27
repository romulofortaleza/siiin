require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        :reason => "Reason",
        :cnpj => "Cnpj",
        :phone => "Phone",
        :mayor => "Mayor",
        :cpf_mayor => "Cpf Mayor",
        :city_hall => "City Hall"
      ),
      Customer.create!(
        :reason => "Reason",
        :cnpj => "Cnpj",
        :phone => "Phone",
        :mayor => "Mayor",
        :cpf_mayor => "Cpf Mayor",
        :city_hall => "City Hall"
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", :text => "Reason".to_s, :count => 2
    assert_select "tr>td", :text => "Cnpj".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Mayor".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf Mayor".to_s, :count => 2
    assert_select "tr>td", :text => "City Hall".to_s, :count => 2
  end
end
