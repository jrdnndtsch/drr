require 'rails_helper'

RSpec.describe "tests/new", type: :view do
  before(:each) do
    assign(:test, Test.new(
      :name => "MyString",
      :learning_module => nil
    ))
  end

  it "renders new test form" do
    render

    assert_select "form[action=?][method=?]", tests_path, "post" do

      assert_select "input#test_name[name=?]", "test[name]"

      assert_select "input#test_learning_module_id[name=?]", "test[learning_module_id]"
    end
  end
end
