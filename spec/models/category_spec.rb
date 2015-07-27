require 'spec_helper'

describe Category do
  it { should have_many(:videos)}
  it { should validate_presence_of(:name)}

  describe "recent_videos" do
    it "returns an array of 6 videos" do
      category = Category.create(name: "category")
      6.times { Video.create(title: "title", description: "Desc", category: category) }
      expect(category.recent_videos.count).to eq(6)
    end
    it "returns an array of 6 videos with created at DESC"

  end
end