class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.integer :tipo
      t.string :nombre
      t.string :apellidos
      t.string :pais
      t.string :email
      t.string :contraseña
      t.timestamps
    end
  end
end
