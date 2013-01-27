class Clip < ActiveRecord::Base
  has_many :postlets
  has_many :boards, :through => :postlets
  attr_accessible :url
  #add a name for the clip or the way the url should be listed
end
