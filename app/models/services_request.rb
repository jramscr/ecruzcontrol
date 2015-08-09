class ServicesRequest < ActiveRecord::Base
  validates_presence_of :name, :phone, :details
end
