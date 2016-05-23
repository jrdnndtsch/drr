require 'rails_helper'

RSpec.describe "tests/edit", type: :view do
  before(:each) do
    @test = assign(:test, Test.create!(
      :name => "MyString",
      :learning_module => nil
    ))
  end

  it "renders the edit test form" do
    render

    assert_select "form[action=?][method=?]", test_path(@test), "post" do

      assert_select "input#test_name[name=?]", "test[name]"

      assert_select "input#test_learning_module_id[name=?]", "test[learning_module_id]"
    end
  end
end
