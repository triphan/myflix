class Video < ActiveRecord::Base
  belongs_to :category
  validates :description, presence: true
  validates :title, presence: true

  def self.search_by_title(search_term)
    results = where("title LIKE ?", "%#{search_term}%").order("created_at DESC")

    if search_term.blank? || results.blank?
      return []
    end
    results
    
  end

end