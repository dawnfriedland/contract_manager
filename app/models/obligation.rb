class Obligation < ActiveRecord::Base
  attr_accessible :amount, :date_met, :description, :due_date, :invoice_number, :met, :monetary, :name
end
