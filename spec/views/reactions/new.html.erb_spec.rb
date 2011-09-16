require 'spec_helper'

describe "reactions/new.html.erb" do
  before(:each) do
    assign(:reaction, stub_model(Reaction,
      :severity => 1,
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new reaction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reactions_path, :method => "post" do
      assert_select "input#reaction_severity", :name => "reaction[severity]"
      assert_select "input#reaction_description", :name => "reaction[description]"
    end
  end
end
