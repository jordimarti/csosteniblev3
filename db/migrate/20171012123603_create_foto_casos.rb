class CreateFotoCasos < ActiveRecord::Migration[5.1]
  def change
    create_table :foto_casos do |t|
      t.text :image_data
      t.integer :cas_practic_id
      t.text :text_ca
      t.text :text_es
      t.text :text_en

      t.timestamps
    end
  end
end
