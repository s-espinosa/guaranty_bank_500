require 'rails_helper'

describe 'Car' do
  describe '.average_max_speed' do
    it 'returns the average max speed for all cars' do
      owner  = Owner.create(name: "Scrooge McDuck")
      driver = Driver.create(name: "Baloo")
      Car.create(owner: owner, driver: driver, max_speed: 1, monetary_value: 2)
      Car.create(owner: owner, driver: driver, max_speed: 2, monetary_value: 2)

      expect(Car.average_max_speed).to eq(1.5)
    end

    it 'returns the average max speed for cars of a particular owner' do
      owner1 = Owner.create(name: "Scrooge McDuck")
      owner2 = Owner.create(name: "Cruella de Vil")
      driver = Driver.create(name: "Baloo")
      Car.create(owner: owner1, driver: driver, max_speed: 1, monetary_value: 2)
      Car.create(owner: owner1, driver: driver, max_speed: 2, monetary_value: 2)
      Car.create(owner: owner2, driver: driver, max_speed: 4, monetary_value: 2)

      expect(owner1.cars.average_max_speed).to eq(1.5)
    end
  end
end
