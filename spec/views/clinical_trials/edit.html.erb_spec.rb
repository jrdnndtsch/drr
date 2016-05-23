require 'rails_helper'

RSpec.describe "clinical_trials/edit", type: :view do
  before(:each) do
    @clinical_trial = assign(:clinical_trial, ClinicalTrial.create!(
      :title => "MyString",
      :image => "",
      :pdf => ""
    ))
  end

  it "renders the edit clinical_trial form" do
    render

    assert_select "form[action=?][method=?]", clinical_trial_path(@clinical_trial), "post" do

      assert_select "input#clinical_trial_title[name=?]", "clinical_trial[title]"

      assert_select "input#clinical_trial_image[name=?]", "clinical_trial[image]"

      assert_select "input#clinical_trial_pdf[name=?]", "clinical_trial[pdf]"
    end
  end
end
