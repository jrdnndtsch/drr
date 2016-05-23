require 'rails_helper'

RSpec.describe "learning_modules/edit", type: :view do
  before(:each) do
    @learning_module = assign(:learning_module, LearningModule.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit learning_module form" do
    render

    assert_select "form[action=?][method=?]", learning_module_path(@learning_module), "post" do

      assert_select "input#learning_module_title[name=?]", "learning_module[title]"

      assert_select "textarea#learning_module_description[name=?]", "learning_module[description]"
    end
  end
end
