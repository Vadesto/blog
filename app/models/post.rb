class Post < ApplicationRecord
  belongs_to :user
  validates :title, length: { in: 5..160 }, presence: true 
  validates :text, presence: true
  validates :description, presence: true
end
