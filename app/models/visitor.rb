class Visitor < ActiveRecord::Base
  attr_accessible :email, :message, :name, :phone

  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :message, presence: true
end
