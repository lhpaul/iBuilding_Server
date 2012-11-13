require 'spec_helper'

describe "device_users/new" do
  before(:each) do
    assign(:device_user, stub_model(DeviceUser).as_new_record)
  end

  it "renders new device_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => device_users_path, :method => "post" do
    end
  end
end
