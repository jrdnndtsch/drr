require 'rails_helper'

RSpec.describe "clinical_trials/index", type: :view do
  before(:each) do
    assign(:clinical_trials, [
      ClinicalTrial.create!(
        :title => "Title",
        :image => "",
        :pdf => ""
      ),
      ClinicalTrial.create!(
        :title => "Title",
        :image => "",
        :pdf => ""
      )
    ])
  end

  it "renders a list of clinical_trials" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
