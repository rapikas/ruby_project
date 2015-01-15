class ElectoralDistrictsController < ApplicationController
  # GET /electoral_districts
  # GET /electoral_districts.json
  def index
    @electoral_districts = ElectoralDistrict.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @electoral_districts }
    end
  end

  # GET /electoral_districts/1
  # GET /electoral_districts/1.json
  def show
    @electoral_district = ElectoralDistrict.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @electoral_district }
    end
  end

  # GET /electoral_districts/new
  # GET /electoral_districts/new.json
  def new
    @electoral_district = ElectoralDistrict.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @electoral_district }
    end
  end

  # GET /electoral_districts/1/edit
  def edit
    @electoral_district = ElectoralDistrict.find(params[:id])
  end

  # POST /electoral_districts
  # POST /electoral_districts.json
  def create
    @electoral_district = ElectoralDistrict.new(params[:electoral_district])

    respond_to do |format|
      if @electoral_district.save
        format.html { redirect_to @electoral_district, notice: 'Electoral district was successfully created.' }
        format.json { render json: @electoral_district, status: :created, location: @electoral_district }
      else
        format.html { render action: "new" }
        format.json { render json: @electoral_district.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /electoral_districts/1
  # PUT /electoral_districts/1.json
  def update
    @electoral_district = ElectoralDistrict.find(params[:id])

    respond_to do |format|
      if @electoral_district.update_attributes(params[:electoral_district])
        format.html { redirect_to @electoral_district, notice: 'Electoral district was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @electoral_district.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /electoral_districts/1
  # DELETE /electoral_districts/1.json
  def destroy
    @electoral_district = ElectoralDistrict.find(params[:id])
    @electoral_district.destroy

    respond_to do |format|
      format.html { redirect_to electoral_districts_url }
      format.json { head :no_content }
    end
  end
end
