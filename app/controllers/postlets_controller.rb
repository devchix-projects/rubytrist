class PostletsController < ApplicationController
  # GET /postlets
  # GET /postlets.json
  def index
    @postlets = Postlet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @postlets }
    end
  end

  # GET /postlets/1
  # GET /postlets/1.json
  def show
    @postlet = Postlet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @postlet }
    end
  end

  # GET /postlets/new
  # GET /postlets/new.json
  def new
    @postlet = Postlet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @postlet }
    end
  end

  # GET /postlets/1/edit
  def edit
    @postlet = Postlet.find(params[:id])
  end

  # POST /postlets
  # POST /postlets.json
  def create
    @postlet = Postlet.new(params[:postlet])

    respond_to do |format|
      if @postlet.save
        format.html { redirect_to @postlet, notice: 'Postlet was successfully created.' }
        format.json { render json: @postlet, status: :created, location: @postlet }
      else
        format.html { render action: "new" }
        format.json { render json: @postlet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /postlets/1
  # PUT /postlets/1.json
  def update
    @postlet = Postlet.find(params[:id])

    respond_to do |format|
      if @postlet.update_attributes(params[:postlet])
        format.html { redirect_to @postlet, notice: 'Postlet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @postlet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postlets/1
  # DELETE /postlets/1.json
  def destroy
    @postlet = Postlet.find(params[:id])
    @postlet.destroy

    respond_to do |format|
      format.html { redirect_to postlets_url }
      format.json { head :no_content }
    end
  end
end
