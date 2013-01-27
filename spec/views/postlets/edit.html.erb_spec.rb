require 'spec_helper'

describe "postlets/edit" do
  before(:each) do
    @postlet = assign(:postlet, stub_model(Postlet))
  end

  it "renders the edit postlet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => postlets_path(@postlet), :method => "post" do
    end
  end
end
