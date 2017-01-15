class Product < ApplicationRecord
  validates :price, presence: true
  #boş olamaz
end
