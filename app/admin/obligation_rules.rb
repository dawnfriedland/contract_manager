ActiveAdmin.register ObligationRule do
     #######################
     # INDEX
     #######################

     index do
      column :name
      column ("Obligation Type") do |t|
        t.obligation_type
      end
       column :description
       column "Obligation Rule Dependencies" do |p|
         p.obligation_rule_dependencies.size 
       end
       # column("View Agreement in IPP") do |a|
       #   link_to "Agreement in IPP", "/path_to_IPP/" + obligation_rule.agreement.ipp_agreement_guid
       # end
       default_actions
     end

     #######################
     # SHOW
     #######################
     # TO DO: figure out why the :repeat attribute displays on the default show active admin page
     # show do
     #   panel "Obligation Rules "do 
     #      if obligation_rules.size > 0
     #        obligation_rule.each do |rule|
     #          para do
     #            span link_to rule.name, admin_obligation_rule_path(rule)
     #            span '('
     #            span rule.met
     #            span ')'
     #           end
     #         end
     #      else
     #        para do
     #          span "No Obligation Rules yet."
     #        end
     #        para do
     #          link_to "Create one?", new_admin_obligation_rule_path
     #        end
     #      end
     #    end
     #  end

     #######################
     # NEW AND EDIT
     #######################
     #:agreement_id, :description, :name, :obligation_type
     form :html => { :enctype => "multipart/form-data" } do |f|        
        if controller.action_name == "new" and params['agreement_id'].to_i > 0         
          parent_agreement = Agreement.find(params['agreement_id'])                      #get it from the querystring
        end  
        if controller.action_name == "edit"        
          parent_agreement = Agreement.find(obligation_rule.agreement_id)                #get it from the obligation_rule
        end  
        if controller.action_name == "edit" || (controller.action_name == "new" and params['agreement_id'].to_i > 0 )         
          f.inputs "New Obligation Rule for #{parent_agreement.name}", multipart: true do
            f.input :agreement_id, as: :select, collection: Agreement.all, selected: parent_agreement.id 
            f.input :name, label: "Please Name the Obligation Rule:"
            f.input :obligation_type, as: :radio, collection: ObligationRule::OBLIGATION_TYPES, label: "Please Choose the Type:"
            f.input :description
          end #inputs
          f.buttons
       else
         para "Obligation rules must have a parent Agreement. Please go back to Agreements."
       end  
    end 
end