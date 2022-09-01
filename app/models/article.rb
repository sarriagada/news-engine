class Article < ApplicationRecord
  # scope :featured, -> {where(featured: true)}
  scope :featured, -> (value = true) {where(featured: value)}
end
