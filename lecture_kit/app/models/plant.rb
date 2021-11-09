class Plant < ActiveRecord::Base
    has_many :plant_parenthoods
    has_many :people, through: :plant_parenthoods

    has_many :plant_categories
    has_many :categories, through: :plant_categories

    has_many :waterings
    has_many :waterers, through: :waterings

    def number_of_days_since_the_last_watering
        (Date.today - waterings.order(created_at: :desc).first.created_at.to_date).to_i
    end
end
