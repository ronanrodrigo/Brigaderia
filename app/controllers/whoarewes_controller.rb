class WhoarewesController < ApplicationController
  before_filter :authenticate_user!, :except => :show
  
  # GET /whoarewes
  # GET /whoarewes.json
  def index
    @whoarewes = Whoarewe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @whoarewes }
    end
  end

  # GET /whoarewes/1
  # GET /whoarewes/1.json
  def show
    @whoarewe = Whoarewe.last

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @whoarewe }
    end
  end
  
  def who
    @whoarewe = Whoarewe.last

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @whoarewe }
    end
  end

  # GET /whoarewes/new
  # GET /whoarewes/new.json
  def new
    @whoarewe = Whoarewe.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @whoarewe }
    end
  end

  # GET /whoarewes/1/edit
  def edit
    @whoarewe = Whoarewe.find(params[:id])
  end

  # POST /whoarewes
  # POST /whoarewes.json
  def create
    @whoarewe = Whoarewe.new(params[:whoarewe])

    respond_to do |format|
      if @whoarewe.save
        format.html { redirect_to @whoarewe, notice: 'Whoarewe was successfully created.' }
        format.json { render json: @whoarewe, status: :created, location: @whoarewe }
      else
        format.html { render action: "new" }
        format.json { render json: @whoarewe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /whoarewes/1
  # PUT /whoarewes/1.json
  def update
    @whoarewe = Whoarewe.find(params[:id])

    respond_to do |format|
      if @whoarewe.update_attributes(params[:whoarewe])
        format.html { redirect_to @whoarewe, notice: 'Whoarewe was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @whoarewe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whoarewes/1
  # DELETE /whoarewes/1.json
  def destroy
    @whoarewe = Whoarewe.find(params[:id])
    @whoarewe.destroy

    respond_to do |format|
      format.html { redirect_to whoarewes_url }
      format.json { head :ok }
    end
  end
end
