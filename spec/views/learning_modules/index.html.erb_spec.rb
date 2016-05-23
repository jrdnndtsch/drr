require 'rails_helper'

RSpec.describe "learning_modules/index", type: :view do
  before(:each) do
    assign(:learning_modules, [
      LearningModule.create!(
        :title => "Title",
        :description => "MyText"
      ),
      LearningModule.create!(
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of learning_modules" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
