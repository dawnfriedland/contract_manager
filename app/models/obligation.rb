class Obligation < ActiveRecord::Base
  attr_accessible :amount, :date_met, :description, :due_date, :invoice_number, :met, :monetary, :name
  belongs_to :one_time_obligation
  belongs_to :reoccuring_obligation
end
