class IncentivesController < ApplicationController
  # GET /incentives
  # GET /incentives.json
  def index
    @incentives = Incentive.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @incentives }
    end
  end

  # GET /incentives/1
  # GET /incentives/1.json
  def show
    @incentive = Incentive.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @incentive }
    end
  end

  # GET /incentives/new
  # GET /incentives/new.json
  def new
    @incentive = Incentive.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @incentive }
    end
  end

  # GET /incentives/1/edit
  def edit
    @incentive = Incentive.find(params[:id])
  end

  # POST /incentives
  # POST /incentives.json
  def create
    @incentive = Incentive.new(params[:incentive])

    respond_to do |format|
      if @incentive.save
        format.html { redirect_to @incentive, notice: 'Incentive was successfully created.' }
        format.json { render json: @incentive, status: :created, location: @incentive }
      else
        format.html { render action: "new" }
        format.json { render json: @incentive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /incentives/1
  # PUT /incentives/1.json
  def update
    @incentive = Incentive.find(params[:id])

    respond_to do |format|
      if @incentive.update_attributes(params[:incentive])
        format.html { redirect_to @incentive, notice: 'Incentive was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @incentive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incentives/1
  # DELETE /incentives/1.json
  def destroy
    @incentive = Incentive.find(params[:id])
    @incentive.destroy

    respond_to do |format|
      format.html { redirect_to incentives_url }
      format.json { head :no_content }
    end
  end
end
