require 'rails_helper'

RSpec.describe "dogs/show", :type => :view do
  before(:each) do
    @dog = assign(:dog, Dog.create!(
      :name => "Name",
      :email => "Email",
      :password_digest => "Password Digest",
      :city => "City",
      :state => "State",
      :newsletter => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password Digest/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/false/)
  end
end
