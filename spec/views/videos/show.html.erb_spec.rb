require 'rails_helper'

RSpec.describe "videos/show", type: :view do
  before(:each) do
    @video = assign(:video, Video.create!(
      :user_id => 2,
      :link => "Link",
      :description => "MyText",
      :title => "Title",
      :likes => 3,
      :dislikes => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Link/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
