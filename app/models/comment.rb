class Comment < ApplicationRecord
  belongs_to :store
  
  validates :comment, presence: true
  validates :store, presence: true
end
