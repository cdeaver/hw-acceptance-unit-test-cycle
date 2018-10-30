class AddDirectorToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :director, :string, :default => '', :null => false
  end
end
