class AddCreatorToMultimedia < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :create_by, :string
    add_column :seasons, :create_by, :string
  end
end
