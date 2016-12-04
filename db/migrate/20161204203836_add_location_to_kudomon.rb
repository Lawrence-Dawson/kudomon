class AddLocationToKudomon < ActiveRecord::Migration[5.0]
  def change
    add_column :kudomons, :location, :integer
  end
end
