require 'rails_helper'

RSpec.describe "customers/show", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :reason => "Reason",
      :cnpj => "Cnpj",
      :phone => "Phone",
      :mayor => "Mayor",
      :cpf_mayor => "Cpf Mayor",
      :city_hall => "City Hall"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Reason/)
    expect(rendered).to match(/Cnpj/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Mayor/)
    expect(rendered).to match(/Cpf Mayor/)
    expect(rendered).to match(/City Hall/)
  end
end
