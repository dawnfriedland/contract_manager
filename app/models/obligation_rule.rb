class ObligationRule < ActiveRecord::Base

  attr_accessible :agreement_id, :description, :name, :obligation_type
  has_many :one_time_obligations
  has_many :reoccuring_obligations
  belongs_to :agreement
  has_many :obligation_rule_dependencies
  
  REOCCURING_TYPE = "Recoccuring"
  ONE_TIME_TYPE = "One Time"
  OBLIGATION_TYPES = [REOCCURING_TYPE, ONE_TIME_TYPE]  
end
