require 'rails_helper'

RSpec.describe "videos/edit", type: :view do
  before(:each) do
    @video = assign(:video, Video.create!(
      :title => "MyString",
      :link => "MyString",
      :image => ""
    ))
  end

  it "renders the edit video form" do
    render

    assert_select "form[action=?][method=?]", video_path(@video), "post" do

      assert_select "input#video_title[name=?]", "video[title]"

      assert_select "input#video_link[name=?]", "video[link]"

      assert_select "input#video_image[name=?]", "video[image]"
    end
  end
end
