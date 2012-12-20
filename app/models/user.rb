class User < ActiveRecord::Base
  has_many :boards
  has_many :clips, :through => :boards
  attr_accessible :name
end
