class AddNumberToEpisodes < ActiveRecord::Migration[5.2]
  def change
    add_column :episodes, :episode_number, :integer, default: 0
  end
end
