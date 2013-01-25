class ClipTag < ActiveRecord::Base
  attr_accessible :clip, :tag
  belongs_to :tag
  belongs_to :clip
end
