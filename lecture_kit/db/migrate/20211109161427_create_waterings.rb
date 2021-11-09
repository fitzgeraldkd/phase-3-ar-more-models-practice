class CreateWaterings < ActiveRecord::Migration[5.2]
  def change
    create_table :waterings do |t|
      t.belongs_to :plant
      t.belongs_to :person
      t.timestamps
    end
  end
end
