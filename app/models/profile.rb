class Profile < ActiveRecord::Base
  belongs_to :user
  validates :name, :street, :city, :state, :presence => true, on: :update
  validates :zip, :presence => true, length: { is: 5 }, on: :update
  validates :phone, :presence => true,  length: { in: 10..14 }, on: :update
end

