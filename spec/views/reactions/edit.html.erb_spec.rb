require 'spec_helper'

describe "reactions/edit.html.erb" do
  before(:each) do
    @reaction = assign(:reaction, stub_model(Reaction,
      :severity => 1,
      :description => "MyString"
    ))
  end

  it "renders the edit reaction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reactions_path(@reaction), :method => "post" do
      assert_select "input#reaction_severity", :name => "reaction[severity]"
      assert_select "input#reaction_description", :name => "reaction[description]"
    end
  end
end
