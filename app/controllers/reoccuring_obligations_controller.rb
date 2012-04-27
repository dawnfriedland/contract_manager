class ReoccuringObligationsController < ApplicationController
  # GET /reoccuring_obligations
  # GET /reoccuring_obligations.json
  def index
    @reoccuring_obligations = ReoccuringObligation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reoccuring_obligations }
    end
  end

  # GET /reoccuring_obligations/1
  # GET /reoccuring_obligations/1.json
  def show
    @reoccuring_obligation = ReoccuringObligation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reoccuring_obligation }
    end
  end

  # GET /reoccuring_obligations/new
  # GET /reoccuring_obligations/new.json
  def new
    @reoccuring_obligation = ReoccuringObligation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reoccuring_obligation }
    end
  end

  # GET /reoccuring_obligations/1/edit
  def edit
    @reoccuring_obligation = ReoccuringObligation.find(params[:id])
  end

  # POST /reoccuring_obligations
  # POST /reoccuring_obligations.json
  def create
    @reoccuring_obligation = ReoccuringObligation.new(params[:reoccuring_obligation])

    respond_to do |format|
      if @reoccuring_obligation.save
        format.html { redirect_to @reoccuring_obligation, notice: 'Reoccuring obligation was successfully created.' }
        format.json { render json: @reoccuring_obligation, status: :created, location: @reoccuring_obligation }
      else
        format.html { render action: "new" }
        format.json { render json: @reoccuring_obligation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reoccuring_obligations/1
  # PUT /reoccuring_obligations/1.json
  def update
    @reoccuring_obligation = ReoccuringObligation.find(params[:id])

    respond_to do |format|
      if @reoccuring_obligation.update_attributes(params[:reoccuring_obligation])
        format.html { redirect_to @reoccuring_obligation, notice: 'Reoccuring obligation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reoccuring_obligation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reoccuring_obligations/1
  # DELETE /reoccuring_obligations/1.json
  def destroy
    @reoccuring_obligation = ReoccuringObligation.find(params[:id])
    @reoccuring_obligation.destroy

    respond_to do |format|
      format.html { redirect_to reoccuring_obligations_url }
      format.json { head :no_content }
    end
  end
end
