class CreateObligations < ActiveRecord::Migration
  def change
    create_table :obligations do |t|
      t.string :name
      t.text :description
      t.date :due_date
      t.boolean :met
      t.date :date_met
      t.boolean :monetary
      t.decimal :amount
      t.string :invoice_number

      t.timestamps
    end
  end
end
