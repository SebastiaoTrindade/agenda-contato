class CreateContatos < ActiveRecord::Migration[5.2]
  def change
    create_table :contatos do |t|
      t.string :nome
      t.string :email
      t.references :tipo, foreign_key: true
      t.text :rmk

      t.timestamps
    end
  end
end
