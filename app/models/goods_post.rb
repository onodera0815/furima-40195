class GoodsPost < ApplicationRecord
  has_one_attached :image
  validates :title, :text, presence: true
  extend ActiveHash::Associations::ActiveRecordExtensions


  
  belongs_to :area
  belongs_to :day
  belongs_to :category
  belongs_to :statement
  belongs_to :burden
  validates :area_id, numericality: { other_than: 1 } 
  validates :area_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :day_id, numericality: { other_than: 1 } 
  validates :day_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :category_id, numericality: { other_than: 1 } 
  validates :category_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :statement_id, numericality: { other_than: 1 } 
  validates :statement_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :burden_id, numericality: { other_than: 1 } 
  validates :burden_id, numericality: { other_than: 1 , message: "can't be blank"}

end
