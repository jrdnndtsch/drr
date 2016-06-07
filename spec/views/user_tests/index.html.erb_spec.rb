require 'rails_helper'

RSpec.describe "user_tests/index", type: :view do
  before(:each) do
    assign(:user_tests, [
      UserTest.create!(
        :user => nil,
        :test => nil
      ),
      UserTest.create!(
        :user => nil,
        :test => nil
      )
    ])
  end

  it "renders a list of user_tests" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
