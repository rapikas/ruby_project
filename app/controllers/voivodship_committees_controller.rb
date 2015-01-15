class VoivodshipCommitteesController < ApplicationController
  # GET /voivodship_committees
  # GET /voivodship_committees.json
  def index
    @voivodship_committees = VoivodshipCommittee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @voivodship_committees }
    end
  end

  # GET /voivodship_committees/1
  # GET /voivodship_committees/1.json
  def show
    @voivodship_committee = VoivodshipCommittee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @voivodship_committee }
    end
  end

  # GET /voivodship_committees/new
  # GET /voivodship_committees/new.json
  def new
    @voivodship_committee = VoivodshipCommittee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @voivodship_committee }
    end
  end

  # GET /voivodship_committees/1/edit
  def edit
    @voivodship_committee = VoivodshipCommittee.find(params[:id])
  end

  # POST /voivodship_committees
  # POST /voivodship_committees.json
  def create
    @voivodship_committee = VoivodshipCommittee.new(params[:voivodship_committee])

    respond_to do |format|
      if @voivodship_committee.save
        format.html { redirect_to @voivodship_committee, notice: 'Voivodship committee was successfully created.' }
        format.json { render json: @voivodship_committee, status: :created, location: @voivodship_committee }
      else
        format.html { render action: "new" }
        format.json { render json: @voivodship_committee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /voivodship_committees/1
  # PUT /voivodship_committees/1.json
  def update
    @voivodship_committee = VoivodshipCommittee.find(params[:id])

    respond_to do |format|
      if @voivodship_committee.update_attributes(params[:voivodship_committee])
        format.html { redirect_to @voivodship_committee, notice: 'Voivodship committee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @voivodship_committee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voivodship_committees/1
  # DELETE /voivodship_committees/1.json
  def destroy
    @voivodship_committee = VoivodshipCommittee.find(params[:id])
    @voivodship_committee.destroy

    respond_to do |format|
      format.html { redirect_to voivodship_committees_url }
      format.json { head :no_content }
    end
  end
end
