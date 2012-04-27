class CreateOneTimeObligations < ActiveRecord::Migration
  def change
    create_table :one_time_obligations do |t|
      t.string :name
      t.integer :obligation_rule_id
      t.date :due_date
      t.boolean :is_dependent
      t.boolean :monetary
      t.decimal :amount

      t.timestamps
    end
  end
end
