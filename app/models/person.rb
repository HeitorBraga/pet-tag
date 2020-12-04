class Person < ApplicationRecord
  validates :name, :telephone, :address, :number, :complement, :district, :zip, :city, presence: true
end

Person.create(name: nil).valid?
Person.create(telephone: nil).valid?
Person.create(address: nil).valid?
Person.create(number: nil).valid?
Person.create(complement: nil).valid?
Person.create(district: nil).valid?
Person.create(zip: nil).valid?
Person.create(city: nil).valid?
