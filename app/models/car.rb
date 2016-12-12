class Car < ApplicationRecord
  belongs_to :owner
  belongs_to :driver

  def self.average_max_speed
    average(:max_speed)
  end
end
