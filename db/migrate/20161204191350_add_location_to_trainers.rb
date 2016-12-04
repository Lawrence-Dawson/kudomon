class AddLocationToTrainers < ActiveRecord::Migration[5.0]
  def change
    add_column :trainers, :location, :integer
  end
end
