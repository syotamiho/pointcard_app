class Card < ApplicationRecord
  validates :name, presence: true
  validates :image, presence: true
  validates :category_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :expiration, presence: true

  belongs_to :User
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
end
