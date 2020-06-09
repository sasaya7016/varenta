class Post < ApplicationRecord
  validates :name, :text, presence: true

  def self.search(search)
    return Post.all unless search
    Post.where('text LIKE(?)', "%#{search}%")
  end
end
