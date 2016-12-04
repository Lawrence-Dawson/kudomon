class RemoveLocationFromTrainers < ActiveRecord::Migration[5.0]
  def change
    remove_column :trainers, :location, :integer
  end
end
