require 'rails_helper'

RSpec.describe "videos/new", type: :view do
  before(:each) do
    assign(:video, Video.new(
      :title => "MyString",
      :link => "MyString",
      :image => ""
    ))
  end

  it "renders new video form" do
    render

    assert_select "form[action=?][method=?]", videos_path, "post" do

      assert_select "input#video_title[name=?]", "video[title]"

      assert_select "input#video_link[name=?]", "video[link]"

      assert_select "input#video_image[name=?]", "video[image]"
    end
  end
end
