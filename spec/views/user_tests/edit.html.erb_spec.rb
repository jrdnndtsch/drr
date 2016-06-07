require 'rails_helper'

RSpec.describe "user_tests/edit", type: :view do
  before(:each) do
    @user_test = assign(:user_test, UserTest.create!(
      :user => nil,
      :test => nil
    ))
  end

  it "renders the edit user_test form" do
    render

    assert_select "form[action=?][method=?]", user_test_path(@user_test), "post" do

      assert_select "input#user_test_user_id[name=?]", "user_test[user_id]"

      assert_select "input#user_test_test_id[name=?]", "user_test[test_id]"
    end
  end
end
