require 'spec_helper'

describe "foods/edit.html.erb" do
  before(:each) do
    @food = assign(:food, stub_model(Food,
      :meal => "MyString",
      :ingredients => "MyString"
    ))
  end

  it "renders the edit food form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => foods_path(@food), :method => "post" do
      assert_select "input#food_meal", :name => "food[meal]"
      assert_select "input#food_ingredients", :name => "food[ingredients]"
    end
  end
end
