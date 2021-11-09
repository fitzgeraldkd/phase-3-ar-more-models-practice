class Person < ActiveRecord::Base
    has_many :plant_parenthoods
    has_many :plants, through: :plant_parenthoods

    has_many :waterings
    has_many :waterees, through: :waterings

    def water_plant(plant)
        Watering.create(waterer: self, wateree: plant)
        pp = plant_parenthoods.find_by(plant_id: plant.id)
        pp.add_affection if pp
    end
end