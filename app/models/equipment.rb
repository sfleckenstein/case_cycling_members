class Equipment < ActiveRecord::Base
  attr_accessible :name, :quantity
  belongs_to	:member
  
end
