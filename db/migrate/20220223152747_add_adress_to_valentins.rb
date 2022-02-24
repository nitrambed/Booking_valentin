class AddAdressToValentins < ActiveRecord::Migration[6.1]
  def change
    add_column :valentins, :adress, :string
  end
end
