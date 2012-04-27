class ObligationRule < ActiveRecord::Base
  attr_accessible :agreement_id, :description, :name, :repeat, :type
end
