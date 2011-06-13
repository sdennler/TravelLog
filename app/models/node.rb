class Node < ActiveRecord::Base
  validates :name,  :presence => true
  validates :lat, :presence => true, :length => { :minimum => 3 }
  validates :lon, :presence => true, :length => { :minimum => 3 }

  belongs_to :post
end
