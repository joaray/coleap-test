class Car < ApplicationRecord
  belongs_to :car_range
  has_and_belongs_to_many :colors

  validates :make, :model, presence: true
end
