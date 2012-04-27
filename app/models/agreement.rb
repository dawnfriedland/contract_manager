class Agreement < ActiveRecord::Base
  attr_accessible :contract_manager, :ipp_agreement_guid, :name, :set_up_complete
  has_many :obligation_rules
  
    CONSTANTS = ["Dawn", "Morgan"]  
end
