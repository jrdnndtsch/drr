require 'rails_helper'

RSpec.describe "user_tests/show", type: :view do
  before(:each) do
    @user_test = assign(:user_test, UserTest.create!(
      :user => nil,
      :test => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
