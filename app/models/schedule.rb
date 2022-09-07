class Schedule < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :size
  belongs_to :accuracy
  belongs_to :time_zone

  #空の投稿を保存できないようにする
  validates :saize_id, :accuracy_id, :time_zone, numericality: { other_than: 1 , message: "can't be blank"}, presence: true
end
