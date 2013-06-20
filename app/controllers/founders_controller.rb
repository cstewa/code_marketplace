class FoundersController < ApplicationController
  # GET /founders
  # GET /founders.json
  def index
    @founders = Founder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @founders }
    end
  end

  # GET /founders/1
  # GET /founders/1.json
  def show
    @founder = Founder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @founder }
    end
  end

  # GET /founders/new
  # GET /founders/new.json
  def new
    @founder = Founder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @founder }
    end
  end

  # GET /founders/1/edit
  def edit
    @founder = Founder.find(params[:id])
  end

  # POST /founders
  # POST /founders.json
  def create
    @founder = Founder.new(params[:founder])

    respond_to do |format|
      if @founder.save
        format.html { redirect_to @founder, notice: 'Founder was successfully created.' }
        format.json { render json: @founder, status: :created, location: @founder }
      else
        format.html { render action: "new" }
        format.json { render json: @founder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /founders/1
  # PUT /founders/1.json
  def update
    @founder = Founder.find(params[:id])

    respond_to do |format|
      if @founder.update_attributes(params[:founder])
        format.html { redirect_to @founder, notice: 'Founder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @founder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /founders/1
  # DELETE /founders/1.json
  def destroy
    @founder = Founder.find(params[:id])
    @founder.destroy

    respond_to do |format|
      format.html { redirect_to founders_url }
      format.json { head :no_content }
    end
  end
end
