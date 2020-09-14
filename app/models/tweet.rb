class Tweet < ApplicationRecord
  belongs_to :user
  has_many :comments  # commentsテーブルとのアソシエーション
  validates :text, presence: true

  def self.search(search)
    if search
      Tweet.where('text LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end
end