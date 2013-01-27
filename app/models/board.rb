class Board < ActiveRecord::Base
  belongs_to :user
  has_many :postlets
  has_many :clips, :through => :postlets
  attr_accessible :title
  accepts_nested_attributes_for :clips, :reject_if => proc { |url| attributes['url'].nil? }
end
