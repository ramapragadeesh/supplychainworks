require 'rails_helper'

RSpec.describe "users/show", :type => :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "Name",
      :email => "Email",
      :country => "Country",
      :contact_no => "Contact No",
      :org_name => "Org Name",
      :org_address => "MyText",
      :password => "Password",
      :notification_email => "Notification Email",
      :affiliation => "Affiliation"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Contact No/)
    expect(rendered).to match(/Org Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/Notification Email/)
    expect(rendered).to match(/Affiliation/)
  end
end
