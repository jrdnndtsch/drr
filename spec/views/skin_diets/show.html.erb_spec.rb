require 'rails_helper'

RSpec.describe "skin_diets/show", type: :view do
  before(:each) do
    @skin_diet = assign(:skin_diet, SkinDiet.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
