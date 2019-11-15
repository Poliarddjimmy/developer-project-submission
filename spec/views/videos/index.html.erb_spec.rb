require 'rails_helper'

RSpec.describe "videos/index", type: :view do
  before(:each) do
    assign(:videos, [
      Video.create!(
        :user_id => 2,
        :link => "Link",
        :description => "MyText",
        :title => "Title",
        :likes => 3,
        :dislikes => 4
      ),
      Video.create!(
        :user_id => 2,
        :link => "Link",
        :description => "MyText",
        :title => "Title",
        :likes => 3,
        :dislikes => 4
      )
    ])
  end

  it "renders a list of videos" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
