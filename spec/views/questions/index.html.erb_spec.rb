require 'rails_helper'

RSpec.describe "questions/index", type: :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        :title => "Title",
        :test => nil
      ),
      Question.create!(
        :title => "Title",
        :test => nil
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
