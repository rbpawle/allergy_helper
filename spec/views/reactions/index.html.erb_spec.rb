require 'spec_helper'

describe "reactions/index.html.erb" do
  before(:each) do
    assign(:reactions, [
      stub_model(Reaction,
        :severity => 1,
        :description => "Description"
      ),
      stub_model(Reaction,
        :severity => 1,
        :description => "Description"
      )
    ])
  end

  it "renders a list of reactions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
