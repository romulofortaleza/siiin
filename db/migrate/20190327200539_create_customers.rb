class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :reason
      t.string :cnpj
      t.string :phone
      t.string :mayor
      t.string :cpf_mayor
      t.string :city_hall

      t.timestamps
    end
  end
end
