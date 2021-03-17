class Post < ApplicationRecord
  validates :title, presence: true, length: { in: 6..20 }
  validates :body, length: { maximum: 1000 }

  belongs_to :user
  has_many :comments
end
