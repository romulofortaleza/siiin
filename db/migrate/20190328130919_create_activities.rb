class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.references :customer, foreign_key: true
      t.string :subject
      t.text :activity

      t.timestamps
    end
  end
end
