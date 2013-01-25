class Clip < ActiveRecord::Base
  has_many :postlets
  has_many :boards, :through => :postlets
  attr_accessible :url
  #add a name for the clip or the way the url should be listed
  has_many :clip_tags
  has_many :tags, :through => :clip_tags
end
