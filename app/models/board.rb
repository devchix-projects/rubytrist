class Board < ActiveRecord::Base
  belongs_to :user
  has_many :postlets
  has_many :clips, :through => :postlets
  has_many :board_tags
  attr_accessible :title
  
end
