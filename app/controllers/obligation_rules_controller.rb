class ObligationRulesController < ApplicationController
  # GET /obligation_rules
  # GET /obligation_rules.json
  def index
    @obligation_rules = ObligationRule.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @obligation_rules }
    end
  end

  # GET /obligation_rules/1
  # GET /obligation_rules/1.json
  def show
    @obligation_rule = ObligationRule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @obligation_rule }
    end
  end

  # GET /obligation_rules/new
  # GET /obligation_rules/new.json
  def new
    @obligation_rule = ObligationRule.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @obligation_rule }
    end
  end

  # GET /obligation_rules/1/edit
  def edit
    @obligation_rule = ObligationRule.find(params[:id])
  end

  # POST /obligation_rules
  # POST /obligation_rules.json
  def create
    @obligation_rule = ObligationRule.new(params[:obligation_rule])

    respond_to do |format|
      if @obligation_rule.save
        format.html { redirect_to @obligation_rule, notice: 'Obligation rule was successfully created.' }
        format.json { render json: @obligation_rule, status: :created, location: @obligation_rule }
      else
        format.html { render action: "new" }
        format.json { render json: @obligation_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /obligation_rules/1
  # PUT /obligation_rules/1.json
  def update
    @obligation_rule = ObligationRule.find(params[:id])

    respond_to do |format|
      if @obligation_rule.update_attributes(params[:obligation_rule])
        format.html { redirect_to @obligation_rule, notice: 'Obligation rule was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @obligation_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obligation_rules/1
  # DELETE /obligation_rules/1.json
  def destroy
    @obligation_rule = ObligationRule.find(params[:id])
    @obligation_rule.destroy

    respond_to do |format|
      format.html { redirect_to obligation_rules_url }
      format.json { head :no_content }
    end
  end
end
