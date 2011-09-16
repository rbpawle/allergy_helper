require 'spec_helper'

describe "reactions/show.html.erb" do
  before(:each) do
    @reaction = assign(:reaction, stub_model(Reaction,
      :severity => 1,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
  end
end
