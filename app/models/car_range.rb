class CarRange < ApplicationRecord
  has_many :cars

  validates :distance, :unit, presence: true

  enum unit: {
    :km => 10,
    :mile => 20,
  }
end
