class CarSerializer < ActiveModel::Serializer
  attributes %i[id make model price photo]
  attribute :range do
    object.car_range.as_json(only: %i[unit distance])
  end

  attribute :colors do
    object.colors.pluck(:name)
  end
end
