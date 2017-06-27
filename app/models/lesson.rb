class Lesson < ActiveRecord::Base
  # belongs_to :animal

  validates :name, :presence => true
  validates :content, :presence => true
  validates :order, :presence => true
end
