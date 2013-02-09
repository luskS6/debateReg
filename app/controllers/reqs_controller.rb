class ReqsController < ApplicationController
  # GET /reqs
  # GET /reqs.json
  def index
    @reqs = Req.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reqs }
    end
  end

  # GET /reqs/1
  # GET /reqs/1.json
  def show
    @req = Req.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @req }
    end
  end

  # GET /reqs/new
  # GET /reqs/new.json
  def new
    @req = Req.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @req }
    end
  end

  # GET /reqs/1/edit
  def edit
    @req = Req.find(params[:id])
  end

  # POST /reqs
  # POST /reqs.json
  def create
    @req = Req.new(params[:req])
    @req.school_id = current_school.id

    respond_to do |format|
      if @req.save
        format.html { redirect_to @req, notice: 'Req was successfully created.' }
        format.json { render json: @req, status: :created, location: @req }
      else
        format.html { render action: "new" }
        format.json { render json: @req.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reqs/1
  # PUT /reqs/1.json
  def update
    @req = Req.find(params[:id])

    respond_to do |format|
      if @req.update_attributes(params[:req])
        format.html { redirect_to @req, notice: 'Req was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @req.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reqs/1
  # DELETE /reqs/1.json
  def destroy
    @req = Req.find(params[:id])
    @req.destroy

    respond_to do |format|
      format.html { redirect_to reqs_url }
      format.json { head :no_content }
    end
  end
end
