class AddKudomonTable < ActiveRecord::Migration[5.0]
  def change
    create_table :kudomons do |t|
     t.string :species
     t.string :of_type
     t.integer :location

     t.timestamps
   end
  end
end
