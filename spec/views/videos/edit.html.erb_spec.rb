require 'rails_helper'

RSpec.describe "videos/edit", type: :view do
  before(:each) do
    @video = assign(:video, Video.create!(
      :user_id => 1,
      :link => "MyString",
      :description => "MyText",
      :title => "MyString",
      :likes => 1,
      :dislikes => 1
    ))
  end

  it "renders the edit video form" do
    render

    assert_select "form[action=?][method=?]", video_path(@video), "post" do

      assert_select "input[name=?]", "video[user_id]"

      assert_select "input[name=?]", "video[link]"

      assert_select "textarea[name=?]", "video[description]"

      assert_select "input[name=?]", "video[title]"

      assert_select "input[name=?]", "video[likes]"

      assert_select "input[name=?]", "video[dislikes]"
    end
  end
end
