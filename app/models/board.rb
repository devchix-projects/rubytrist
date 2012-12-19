class Board < ActiveRecord::Base
  belongs_to :user
  has_many :postlets
  has_many :clips, :through => :postlets
  attr_accessible :title
end
