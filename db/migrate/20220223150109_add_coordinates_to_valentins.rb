class AddCoordinatesToValentins < ActiveRecord::Migration[6.1]
  def change
    add_column :valentins, :latitude, :float
    add_column :valentins, :longitude, :float
  end
end
