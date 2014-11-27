require 'rails_helper'

RSpec.describe "users/new", :type => :view do
  before(:each) do
    assign(:user, User.new(
      :name => "MyString",
      :email => "MyString",
      :country => "MyString",
      :contact_no => "MyString",
      :org_name => "MyString",
      :org_address => "MyText",
      :password => "MyString",
      :notification_email => "MyString",
      :affiliation => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_country[name=?]", "user[country]"

      assert_select "input#user_contact_no[name=?]", "user[contact_no]"

      assert_select "input#user_org_name[name=?]", "user[org_name]"

      assert_select "textarea#user_org_address[name=?]", "user[org_address]"

      assert_select "input#user_password[name=?]", "user[password]"

      assert_select "input#user_notification_email[name=?]", "user[notification_email]"

      assert_select "input#user_affiliation[name=?]", "user[affiliation]"
    end
  end
end
