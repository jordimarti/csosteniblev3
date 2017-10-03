class CreateNoticies < ActiveRecord::Migration[5.1]
  def change
    create_table :noticies do |t|
      t.string :titol_ca
      t.text :resum_ca
      t.string :permalink_ca
      t.text :contingut_ca
      t.string :titol_es
      t.text :resum_es
      t.string :permalink_es
      t.text :contingut_es
      t.timestamp :data
      t.boolean :dapc

      t.timestamps
    end
  end
end
