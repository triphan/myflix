require 'spec_helper'

describe Video do
  it { should belong_to(:category )}
  it { should validate_presence_of(:title)}
  it { should validate_presence_of(:description)}

  describe 'search_by_title' do
    it 'should return an empty array if there are no matches' do
      results = Video.search_by_title('title')
      expect(results).to eq([])
    end
    it 'return an array of one video if there is an exact match' do
      vid = Video.create(title: "vid", description: 'desc')
      vid2 = Video.create(title: "lala", description: "desc2")
      results = Video.search_by_title("vid")
      expect(results).to eq([vid])
    end

    it 'returns an array of one video for a partial match' do
      vid = Video.create(title: "vid", description: "desc")
      expect(Video.search_by_title("vi")).to eq([vid])

    end
    it 'returns an array of all matches ordered by created_at' do
      vid1 = Video.create(title: "first 1", description: "first desc", created_at: 1.day.ago)
      vid2 = Video.create(title: "second 1", description: "second desc")
      expect(Video.search_by_title("1")).to eq([vid2, vid1])
    end

    it 'returns empty array if empty string' do
      vid = Video.create(title: "test", description: "desc")
      expect(Video.search_by_title("")).to eq([])
    end
  end
end