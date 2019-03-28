require 'rails_helper'

RSpec.describe "activities/edit", type: :view do
  before(:each) do
    @activity = assign(:activity, Activity.create!(
      :customer => nil,
      :subject => "MyString",
      :activity => "MyText"
    ))
  end

  it "renders the edit activity form" do
    render

    assert_select "form[action=?][method=?]", activity_path(@activity), "post" do

      assert_select "input[name=?]", "activity[customer_id]"

      assert_select "input[name=?]", "activity[subject]"

      assert_select "textarea[name=?]", "activity[activity]"
    end
  end
end
