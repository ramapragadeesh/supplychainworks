require 'rails_helper'

RSpec.describe "users/index", :type => :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Name",
        :email => "Email",
        :country => "Country",
        :contact_no => "Contact No",
        :org_name => "Org Name",
        :org_address => "MyText",
        :password => "Password",
        :notification_email => "Notification Email",
        :affiliation => "Affiliation"
      ),
      User.create!(
        :name => "Name",
        :email => "Email",
        :country => "Country",
        :contact_no => "Contact No",
        :org_name => "Org Name",
        :org_address => "MyText",
        :password => "Password",
        :notification_email => "Notification Email",
        :affiliation => "Affiliation"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Contact No".to_s, :count => 2
    assert_select "tr>td", :text => "Org Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Notification Email".to_s, :count => 2
    assert_select "tr>td", :text => "Affiliation".to_s, :count => 2
  end
end
