require 'rails_helper'

RSpec.describe "skin_diets/edit", type: :view do
  before(:each) do
    @skin_diet = assign(:skin_diet, SkinDiet.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit skin_diet form" do
    render

    assert_select "form[action=?][method=?]", skin_diet_path(@skin_diet), "post" do

      assert_select "input#skin_diet_title[name=?]", "skin_diet[title]"
    end
  end
end
