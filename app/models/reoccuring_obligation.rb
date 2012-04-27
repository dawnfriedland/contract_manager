class ReoccuringObligation < ActiveRecord::Base
  attr_accessible :amount, :duration, :duration_period, :end_date, :frequency, :frequency_period, :is_dependent, :monetary, :name, :obligation_rule_id, :start_date
end
