class Post < ApplicationRecord
  validates :title, :author, :body, presence: true 
  has_rich_text :content
  has_many :comments 
end    