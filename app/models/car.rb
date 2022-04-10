class Car < ApplicationRecord
  belongs_to :car_range
  has_and_belongs_to_many :colors

  validates :make, :model, presence: true

  def self.made_by(names)
    return self.where(make: names.split(',')) if names

    self.all
  end
end
