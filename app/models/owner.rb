class Owner < ApplicationRecord
  has_many :dogs

  def self.order_owner_name #class method
    order(:owner_name)
  end

end
