class CreateItems < ActiveRecord::Migration[8.0]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :amount
      t.decimal :maximum_amount

      t.timestamps
    end
  end
end
