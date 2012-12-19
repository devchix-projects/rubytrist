class Clip < ActiveRecord::Base
  has_many :postlets
  has_many :boards, :through => :postlets
  attr_accessible :url
end
