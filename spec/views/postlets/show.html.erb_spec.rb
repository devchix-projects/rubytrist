require 'spec_helper'

describe "postlets/show" do
  before(:each) do
    @postlet = assign(:postlet, stub_model(Postlet))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
