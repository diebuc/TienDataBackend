class Store < ActiveRecord::Base
  attr_accessible :URL, :address, :email, :hoursOfOperation, :name, :phone
end
