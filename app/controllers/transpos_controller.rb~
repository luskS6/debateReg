class TransposController < ApplicationController
  # GET /transpos
  # GET /transpos.json
  def index
    @transpos = Transpo.all
    @schools = School.all
    @transpos = Transpo.where("school_id = ?", params[:sView])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @transpos }
    end
  end

  # GET /transpos/1
  # GET /transpos/1.json
  def show
    @transpo = Transpo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @transpo }
    end
  end

  # GET /transpos/new
  # GET /transpos/new.json
  def new
    @transpo = Transpo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @transpo }
    end
  end

  # GET /transpos/1/edit
  def edit
    @transpo = Transpo.find(params[:id])
  end

  # POST /transpos
  # POST /transpos.json
  def create
    @transpo = Transpo.new(params[:transpo])
    @transpo.school_id = current_school.id
    respond_to do |format|
      if @transpo.save
        format.html { redirect_to @transpo, notice: 'Transpo was successfully created.' }
        format.json { render json: @transpo, status: :created, location: @transpo }
      else
        format.html { render action: "new" }
        format.json { render json: @transpo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /transpos/1
  # PUT /transpos/1.json
  def update
    @transpo = Transpo.find(params[:id])

    respond_to do |format|
      if @transpo.update_attributes(params[:transpo])
        format.html { redirect_to @transpo, notice: 'Transpo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @transpo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transpos/1
  # DELETE /transpos/1.json
  def destroy
    @transpo = Transpo.find(params[:id])
    @transpo.destroy

    respond_to do |format|
      format.html { redirect_to transpos_url }
      format.json { head :no_content }
    end
  end
end
