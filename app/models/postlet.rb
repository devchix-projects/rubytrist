class Postlet < ActiveRecord::Base
  belongs_to :board
  belongs_to :clip
  # attr_accessible :title, :body
end
