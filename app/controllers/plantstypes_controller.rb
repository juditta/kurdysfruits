class PlantstypesController < ApplicationController
  # GET /plantstypes
  # GET /plantstypes.json
  def index
    @plantstypes = Plantstype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plantstypes }
    end
  end

  # GET /plantstypes/1
  # GET /plantstypes/1.json
  def show
    @plantstype = Plantstype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plantstype }
    end
  end

  # GET /plantstypes/new
  # GET /plantstypes/new.json
  def new
    @plantstype = Plantstype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plantstype }
    end
  end

  # GET /plantstypes/1/edit
  def edit
    @plantstype = Plantstype.find(params[:id])
  end

  # POST /plantstypes
  # POST /plantstypes.json
  def create
    @plantstype = Plantstype.new(params[:plantstype])

    respond_to do |format|
      if @plantstype.save
        format.html { redirect_to @plantstype, notice: 'Plantstype was successfully created.' }
        format.json { render json: @plantstype, status: :created, location: @plantstype }
      else
        format.html { render action: "new" }
        format.json { render json: @plantstype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /plantstypes/1
  # PUT /plantstypes/1.json
  def update
    @plantstype = Plantstype.find(params[:id])

    respond_to do |format|
      if @plantstype.update_attributes(params[:plantstype])
        format.html { redirect_to @plantstype, notice: 'Plantstype was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @plantstype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plantstypes/1
  # DELETE /plantstypes/1.json
  def destroy
    @plantstype = Plantstype.find(params[:id])
    @plantstype.destroy

    respond_to do |format|
      format.html { redirect_to plantstypes_url }
      format.json { head :ok }
    end
  end
end
