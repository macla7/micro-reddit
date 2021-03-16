class User < ApplicationRecord
  validates :name, presence: true, length: { in: 6..20 }, uniqueness: true
  validates :email, format: { with: /@/, message: 'must be a proper email' }
  validates :password, length: { in: 6..50 }, format: { with: /(?=.*?[0-9])(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[#?!@$%^&*-])/ }

  has_many :comments
  has_many :posts
end
