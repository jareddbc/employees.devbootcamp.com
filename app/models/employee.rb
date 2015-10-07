class Employee < ActiveRecord::Base

  validates :name, presence: true

  # belongs_to :hardwares
  # belongs_to :softwares
end
