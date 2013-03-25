class Guest < ActiveRecord::Base

  attr_accessible :attending, :guests, :guest_names

  validates :attending, inclusion: {in: [true, false]}
  validates :guests, presence: true, numericality: { only_integer: true }
  validates :guest_names, presence: true
end
