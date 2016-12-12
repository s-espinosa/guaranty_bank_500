require 'rails_helper'

describe 'Car' do
  describe '.average_max_speed' do
    it 'returns the average max speed for all cars' do
      car1, car2 = create_list(:car, 2)

      expected = (car1.max_speed + car2.max_speed) / 2.0
      expect(Car.average_max_speed).to eq(expected)
    end

    xit 'returns the average max speed for cars of a particular owner' do
      # Create data comparable to what's being used in `car_spec.rb`
      # See if you can create an `:owner_with_cars` factory to accomplish this

      expected = (owner1.cars[0].max_speed + owner1.cars[1].max_speed) / 2.0
      expect(owner1.cars.average_max_speed).to eq(expected)
    end
  end
end
