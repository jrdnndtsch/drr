require 'rails_helper'

RSpec.describe "clinical_trials/show", type: :view do
  before(:each) do
    @clinical_trial = assign(:clinical_trial, ClinicalTrial.create!(
      :title => "Title",
      :image => "",
      :pdf => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
