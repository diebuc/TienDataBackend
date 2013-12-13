class Comment < ActiveRecord::Base
  belongs_to :store
  attr_accessible :comment
end
