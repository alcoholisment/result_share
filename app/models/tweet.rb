class Tweet < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image
  validates :text, length: { maximum: 100 }

  def self.search(search)
    if search
      Tweet.where('text LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end
end
