require 'rails_helper'

RSpec.describe "learning_modules/new", type: :view do
  before(:each) do
    assign(:learning_module, LearningModule.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new learning_module form" do
    render

    assert_select "form[action=?][method=?]", learning_modules_path, "post" do

      assert_select "input#learning_module_title[name=?]", "learning_module[title]"

      assert_select "textarea#learning_module_description[name=?]", "learning_module[description]"
    end
  end
end
