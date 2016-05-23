require 'rails_helper'

RSpec.describe "clinical_trials/new", type: :view do
  before(:each) do
    assign(:clinical_trial, ClinicalTrial.new(
      :title => "MyString",
      :image => "",
      :pdf => ""
    ))
  end

  it "renders new clinical_trial form" do
    render

    assert_select "form[action=?][method=?]", clinical_trials_path, "post" do

      assert_select "input#clinical_trial_title[name=?]", "clinical_trial[title]"

      assert_select "input#clinical_trial_image[name=?]", "clinical_trial[image]"

      assert_select "input#clinical_trial_pdf[name=?]", "clinical_trial[pdf]"
    end
  end
end
