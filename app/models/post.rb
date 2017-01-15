class Post < ApplicationRecord
  validates :header, presence: true, length:{ in: 5..12}
  #presence boş bırakılamayacağını soyler boşsa kaydetmez
  has_many :comments, dependent: :destroy
end
