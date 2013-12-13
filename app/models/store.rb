class Store < ActiveRecord::Base
  attr_accessible :URL, :address, :email, :hoursOfOperation, :name, :phone
  has_many :comments
end
