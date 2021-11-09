class PlantParenthood < ActiveRecord::Base

     belongs_to :person
     belongs_to :plant

     def add_affection
        update(:affection, affection + 1) if affection < 11000
     end
    # def plant_parents
    #     # before ActiveRecord
    #     PlantParent.all.select{|plant_parent| plant_parent == self.plant_parents}
    #     # AR:
    #     id_num = self.plant_parent_id
    #     PlantParent.find(id_num)
    # end
end