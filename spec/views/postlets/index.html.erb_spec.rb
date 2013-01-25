require 'spec_helper'

describe "postlets/index" do
  before(:each) do
    assign(:postlets, [
      stub_model(Postlet),
      stub_model(Postlet)
    ])
  end

  it "renders a list of postlets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
