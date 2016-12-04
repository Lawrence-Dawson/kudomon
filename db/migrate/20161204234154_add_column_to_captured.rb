class AddColumnToCaptured < ActiveRecord::Migration[5.0]
  def change
    add_column :captureds, :trainer_id, :integer
    add_column :captureds, :kudomon_id, :integer
  end
end
