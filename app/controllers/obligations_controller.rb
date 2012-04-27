class ObligationsController < ApplicationController
  # GET /obligations
  # GET /obligations.json
  def index
    @obligations = Obligation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @obligations }
    end
  end

  # GET /obligations/1
  # GET /obligations/1.json
  def show
    @obligation = Obligation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @obligation }
    end
  end

  # GET /obligations/new
  # GET /obligations/new.json
  def new
    @obligation = Obligation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @obligation }
    end
  end

  # GET /obligations/1/edit
  def edit
    @obligation = Obligation.find(params[:id])
  end

  # POST /obligations
  # POST /obligations.json
  def create
    @obligation = Obligation.new(params[:obligation])

    respond_to do |format|
      if @obligation.save
        format.html { redirect_to @obligation, notice: 'Obligation was successfully created.' }
        format.json { render json: @obligation, status: :created, location: @obligation }
      else
        format.html { render action: "new" }
        format.json { render json: @obligation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /obligations/1
  # PUT /obligations/1.json
  def update
    @obligation = Obligation.find(params[:id])

    respond_to do |format|
      if @obligation.update_attributes(params[:obligation])
        format.html { redirect_to @obligation, notice: 'Obligation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @obligation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obligations/1
  # DELETE /obligations/1.json
  def destroy
    @obligation = Obligation.find(params[:id])
    @obligation.destroy

    respond_to do |format|
      format.html { redirect_to obligations_url }
      format.json { head :no_content }
    end
  end
end
