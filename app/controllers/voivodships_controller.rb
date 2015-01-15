class VoivodshipsController < ApplicationController
  # GET /voivodships
  # GET /voivodships.json
  def index
    @voivodships = Voivodship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @voivodships }
    end
  end

  # GET /voivodships/1
  # GET /voivodships/1.json
  def show
    @voivodship = Voivodship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @voivodship }
    end
  end

  # GET /voivodships/new
  # GET /voivodships/new.json
  def new
    @voivodship = Voivodship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @voivodship }
    end
  end

  # GET /voivodships/1/edit
  def edit
    @voivodship = Voivodship.find(params[:id])
  end

  # POST /voivodships
  # POST /voivodships.json
  def create
    @voivodship = Voivodship.new(params[:voivodship])

    respond_to do |format|
      if @voivodship.save
        format.html { redirect_to @voivodship, notice: 'Voivodship was successfully created.' }
        format.json { render json: @voivodship, status: :created, location: @voivodship }
      else
        format.html { render action: "new" }
        format.json { render json: @voivodship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /voivodships/1
  # PUT /voivodships/1.json
  def update
    @voivodship = Voivodship.find(params[:id])

    respond_to do |format|
      if @voivodship.update_attributes(params[:voivodship])
        format.html { redirect_to @voivodship, notice: 'Voivodship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @voivodship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voivodships/1
  # DELETE /voivodships/1.json
  def destroy
    @voivodship = Voivodship.find(params[:id])
    @voivodship.destroy

    respond_to do |format|
      format.html { redirect_to voivodships_url }
      format.json { head :no_content }
    end
  end
end
