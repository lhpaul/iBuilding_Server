require 'spec_helper'

describe "device_users/show" do
  before(:each) do
    @device_user = assign(:device_user, stub_model(DeviceUser))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
