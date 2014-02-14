class Submission < ActiveRecord::Base
  belongs_to :user
  has_many :ratings
  attr_accessible :approved, :description, :agreed, :title, :url

  validates :title, presence: true, length: { minimum: 3, maximum: 140 }
  validates :description, presence: true, length: { minimum: 60, maximum: 1500 }
  validates :url, allow_blank: true, length: { minimum: 7, maximum: 255 }

end