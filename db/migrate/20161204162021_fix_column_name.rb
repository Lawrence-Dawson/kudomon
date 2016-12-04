class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :kudomons, :type, :of_type
  end
end
