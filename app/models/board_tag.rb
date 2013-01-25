class BoardTag < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :board
  belongs_to :tag
end
