require 'spec_helper'

describe "foods/show.html.erb" do
  before(:each) do
    @food = assign(:food, stub_model(Food,
      :meal => "Meal",
      :ingredients => "Ingredients"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Meal/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ingredients/)
  end
end
