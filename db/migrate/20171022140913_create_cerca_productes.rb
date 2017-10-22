class CreateCercaProductes < ActiveRecord::Migration[5.1]
  def change
    create_table :cerca_productes do |t|
      t.string :cerca

      t.timestamps
    end
  end
end
