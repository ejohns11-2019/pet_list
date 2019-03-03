class Dog < ApplicationRecord
  belongs_to :owner

  validates :owner_name, length: {2..50}
  validates :age, numericality: { only_integer: true,
    greater_than_or_equal_to: 18}, allow_blank: true, on: update
  validates :dog_name, presence: true on: create
  validates :city, allow_blank: true
end
