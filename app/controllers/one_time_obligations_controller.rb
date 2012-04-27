class OneTimeObligationsController < ApplicationController
  # GET /one_time_obligations
  # GET /one_time_obligations.json
  def index
    @one_time_obligations = OneTimeObligation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @one_time_obligations }
    end
  end

  # GET /one_time_obligations/1
  # GET /one_time_obligations/1.json
  def show
    @one_time_obligation = OneTimeObligation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @one_time_obligation }
    end
  end

  # GET /one_time_obligations/new
  # GET /one_time_obligations/new.json
  def new
    @one_time_obligation = OneTimeObligation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @one_time_obligation }
    end
  end

  # GET /one_time_obligations/1/edit
  def edit
    @one_time_obligation = OneTimeObligation.find(params[:id])
  end

  # POST /one_time_obligations
  # POST /one_time_obligations.json
  def create
    @one_time_obligation = OneTimeObligation.new(params[:one_time_obligation])

    respond_to do |format|
      if @one_time_obligation.save
        format.html { redirect_to @one_time_obligation, notice: 'One time obligation was successfully created.' }
        format.json { render json: @one_time_obligation, status: :created, location: @one_time_obligation }
      else
        format.html { render action: "new" }
        format.json { render json: @one_time_obligation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /one_time_obligations/1
  # PUT /one_time_obligations/1.json
  def update
    @one_time_obligation = OneTimeObligation.find(params[:id])

    respond_to do |format|
      if @one_time_obligation.update_attributes(params[:one_time_obligation])
        format.html { redirect_to @one_time_obligation, notice: 'One time obligation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @one_time_obligation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /one_time_obligations/1
  # DELETE /one_time_obligations/1.json
  def destroy
    @one_time_obligation = OneTimeObligation.find(params[:id])
    @one_time_obligation.destroy

    respond_to do |format|
      format.html { redirect_to one_time_obligations_url }
      format.json { head :no_content }
    end
  end
end
