require 'rails_helper'

RSpec.describe "videos/new", type: :view do
  before(:each) do
    assign(:video, Video.new(
      :user_id => 1,
      :link => "MyString",
      :description => "MyText",
      :title => "MyString",
      :likes => 1,
      :dislikes => 1
    ))
  end

  it "renders new video form" do
    render

    assert_select "form[action=?][method=?]", videos_path, "post" do

      assert_select "input[name=?]", "video[user_id]"

      assert_select "input[name=?]", "video[link]"

      assert_select "textarea[name=?]", "video[description]"

      assert_select "input[name=?]", "video[title]"

      assert_select "input[name=?]", "video[likes]"

      assert_select "input[name=?]", "video[dislikes]"
    end
  end
end
