class CreateReoccuringObligations < ActiveRecord::Migration
  def change
    create_table :reoccuring_obligations do |t|
      t.string :name
      t.integer :obligation_rule_id
      t.integer :frequency
      t.string :frequency_period
      t.integer :duration
      t.string :duration_period
      t.date :start_date
      t.date :end_date
      t.boolean :is_dependent
      t.boolean :monetary
      t.decimal :amount

      t.timestamps
    end
  end
end
