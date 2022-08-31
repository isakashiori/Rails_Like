class Post < ApplicationRecord
  belongs_to :user
  has_many :users, through: :likes

  validates :title, presence: true, length: { maximum: 255 }
  validates :content, presence: true, length: { maximum: 65_535 }
end
