require 'spec_helper'

describe "clips/show" do
  before(:each) do
    @clip = assign(:clip, stub_model(Clip))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
