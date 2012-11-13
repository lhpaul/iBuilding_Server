require 'spec_helper'

describe "device_users/edit" do
  before(:each) do
    @device_user = assign(:device_user, stub_model(DeviceUser))
  end

  it "renders the edit device_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => device_users_path(@device_user), :method => "post" do
    end
  end
end
