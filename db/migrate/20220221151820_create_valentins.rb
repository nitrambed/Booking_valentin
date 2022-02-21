class CreateValentins < ActiveRecord::Migration[6.1]
  def change
    create_table :valentins do |t|
      t.string :name
      t.integer :price
      t.text :short_description
      t.text :long_description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
