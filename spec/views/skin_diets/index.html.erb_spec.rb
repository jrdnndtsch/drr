require 'rails_helper'

RSpec.describe "skin_diets/index", type: :view do
  before(:each) do
    assign(:skin_diets, [
      SkinDiet.create!(
        :title => "Title"
      ),
      SkinDiet.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of skin_diets" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
