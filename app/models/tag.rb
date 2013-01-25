class Tag < ActiveRecord::Base
  attr_accessible :tag, :user
  has_many :board_tags
  belongs_to :creator, :class_name => "user"
  has_many :clip_tags
end
