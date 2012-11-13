require 'spec_helper'

describe "device_users/index" do
  before(:each) do
    assign(:device_users, [
      stub_model(DeviceUser),
      stub_model(DeviceUser)
    ])
  end

  it "renders a list of device_users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
