class Profile < ActiveRecord::Base
  belongs_to :user

  validates :name, :presence => true, on: :update
  validates :street, :presence => true, on: :update
  validates :city, :presence => true, on: :update
  validates :state, :presence => true, on: :update
  validates :zip, :presence => true, on: :update
  validates :phone, :presence => true, on: :update

end

