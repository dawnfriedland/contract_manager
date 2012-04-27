class CreateObligationRules < ActiveRecord::Migration
  def change
    create_table :obligation_rules do |t|
      t.string :name
      t.text :description
      t.boolean :repeat
      t.string :type
      t.integer :agreement_id

      t.timestamps
    end
  end
end
