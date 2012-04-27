class OneTimeObligation < ActiveRecord::Base
  attr_accessible :amount, :due_date, :is_dependent, :monetary, :name, :obligation_rule_id
  has_many :obligations
  belongs_to :obligation_rule
end
