require 'spec_helper'

describe "foods/index.html.erb" do
  before(:each) do
    assign(:foods, [
      stub_model(Food,
        :meal => "Meal",
        :ingredients => "Ingredients"
      ),
      stub_model(Food,
        :meal => "Meal",
        :ingredients => "Ingredients"
      )
    ])
  end

  it "renders a list of foods" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Meal".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ingredients".to_s, :count => 2
  end
end
