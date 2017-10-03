class CreateProductes < ActiveRecord::Migration[5.1]
  def change
    create_table :productes do |t|
      t.integer :id_ps
      t.string :nom_ca
      t.string :nom_es
      t.string :descripcio_ca
      t.string :descripcio_es
      t.text :caracteristiques_ca
      t.text :caracteristiques_es
      t.text :aplicacio_ca
      t.text :aplicacio_es
      t.text :disponibilitat_ca
      t.text :disponibilitat_es
      t.text :destacats_ca
      t.text :destacats_es
      t.integer :valoracio
      t.string :ambit
      t.integer :ecoetiqueta
      t.integer :ecoetiqueta2
      t.integer :visible
      t.string :img_petita
      t.string :img1
      t.string :nom_doc1_ca
      t.string :nom_doc1_es

      t.timestamps
    end
  end
end
