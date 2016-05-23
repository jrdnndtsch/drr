require 'rails_helper'

RSpec.describe "skin_diets/new", type: :view do
  before(:each) do
    assign(:skin_diet, SkinDiet.new(
      :title => "MyString"
    ))
  end

  it "renders new skin_diet form" do
    render

    assert_select "form[action=?][method=?]", skin_diets_path, "post" do

      assert_select "input#skin_diet_title[name=?]", "skin_diet[title]"
    end
  end
end
