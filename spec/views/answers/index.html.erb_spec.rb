require 'rails_helper'

RSpec.describe "answers/index", type: :view do
  before(:each) do
    assign(:answers, [
      Answer.create!(
        :title => "Title",
        :correct => false,
        :question => nil
      ),
      Answer.create!(
        :title => "Title",
        :correct => false,
        :question => nil
      )
    ])
  end

  it "renders a list of answers" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
