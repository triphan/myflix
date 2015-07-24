class Video < ActiveRecord::Base
  belongs_to :category
  validates :description, presence: true
  validates :title, presence: true
end