class CreateAgreements < ActiveRecord::Migration
  def change
    create_table :agreements do |t|
      t.string :name
      t.string :ipp_agreement_guid
      t.string :contract_manager
      t.boolean :set_up_complete

      t.timestamps
    end
  end
end
