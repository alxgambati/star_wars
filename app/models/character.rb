class Character < ApplicationRecord
    belongs_to :planet
    has_and_belongs_to_many :films
    belongs_to :category
    has_and_belongs_to_many :vehicles
    has_and_belongs_to_many :starships

    def msg_expression
        msg = "Hello! My name is #{self.name}. I am #{self.category.name}, height #{self.height} kg, was born in #{self.planet.name} in the year of #{self.birth_year}"
        msg += "and already piloted #{self.starships.sample.name}" if self.starships.present?
        msg += "and a #{self.vehicles.sample.name}" if self.vehicles.present?
    end
end
