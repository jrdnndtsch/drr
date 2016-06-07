require 'rails_helper'

RSpec.describe "user_tests/new", type: :view do
  before(:each) do
    assign(:user_test, UserTest.new(
      :user => nil,
      :test => nil
    ))
  end

  it "renders new user_test form" do
    render

    assert_select "form[action=?][method=?]", user_tests_path, "post" do

      assert_select "input#user_test_user_id[name=?]", "user_test[user_id]"

      assert_select "input#user_test_test_id[name=?]", "user_test[test_id]"
    end
  end
end
