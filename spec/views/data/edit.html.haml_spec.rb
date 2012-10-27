require 'spec_helper'

describe "data/edit" do
  before(:each) do
    @datum = assign(:datum, stub_model(Datum))
  end

  it "renders the edit datum form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => data_path(@datum), :method => "post" do
    end
  end
end
