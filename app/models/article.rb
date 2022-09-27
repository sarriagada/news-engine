class Article < ApplicationRecord
  # scope :featured, -> {where(featured: true)}
  scope :featured, ->(value = true) { where(featured: value) }

  has_rich_text :body
  has_one_attached :picture
end
