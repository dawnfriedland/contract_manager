ActiveAdmin.register Agreement do

     #######################
     # INDEX
     #######################

     index do
       column :name
       column ("Set Up Complete") do |a|
         a.set_up_complete.to_english
       end
       column :contract_manager
       column("View in IPP") do |a|
         link_to "Agreement in IPP", "/path_to_IPP/" + a.ipp_agreement_guid
       end
       default_actions
     end

     #######################
     # SHOW
     #######################
     show do
       panel "Obligation Rules "do 
          if agreement.obligation_rules.size > 0
            agreement.obligation_rules.each do |rule|
              para do
                span link_to rule.name, admin_obligation_rule_path(rule)
               end
             end
          else
            para do
              span "No Obligation Rules yet."
            end
            para do
              link_to "Create one?", new_admin_obligation_rule_path
            end
          end
        end
      end
     #######################
     # SIDEBARS
     #######################

     sidebar "Contract Manager", only: :show do
       para "Agreement Name: " + agreement.name
       para do
         span "Contract Manager: "
         span link_to agreement.contract_manager
       end
       para do
         span "Set Up Complete: "
         span agreement.set_up_complete.to_english
       end
     end
     #######################
     # ACTION BUTTONS
     #######################

     action_item only: :show do
       link_to "View in IPP", "http://c4cprod.admin.washington.edu/path_to_IPP/?#{agreement.id}"
     end

     action_item only: :show do
       link_to "New Obligation Rule", new_admin_obligation_rule_path + "?agreement_id=#{agreement.id}"
     end


   end