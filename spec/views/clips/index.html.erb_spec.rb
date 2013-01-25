require 'spec_helper'

describe "clips/index" do
  before(:each) do
    assign(:clips, [
      stub_model(Clip),
      stub_model(Clip)
    ])
  end

  it "renders a list of clips" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
