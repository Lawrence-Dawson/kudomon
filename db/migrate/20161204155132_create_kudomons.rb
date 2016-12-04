class CreateKudomons < ActiveRecord::Migration[5.0]
  def change
    create_table :kudomons do |t|
      t.string :species
      t.string :type

      t.timestamps
    end
  end
end
