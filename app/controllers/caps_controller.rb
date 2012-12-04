class CapsController < ApplicationController
  # GET /caps
  # GET /caps.json
  def index
    @caps = Cap.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @caps }
    end
  end

  # GET /caps/1
  # GET /caps/1.json
  def show
    @cap = Cap.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cap }
    end
  end

  # GET /caps/new
  # GET /caps/new.json
  def new
    @cap = Cap.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cap }
    end
  end

  # GET /caps/1/edit
  def edit
    @cap = Cap.find(params[:id])
  end

  # POST /caps
  # POST /caps.json
  def create
    @cap = Cap.new(params[:cap])

    respond_to do |format|
      if @cap.save
        format.html { redirect_to @cap, notice: 'Cap was successfully created.' }
        format.json { render json: @cap, status: :created, location: @cap }
      else
        format.html { render action: "new" }
        format.json { render json: @cap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /caps/1
  # PUT /caps/1.json
  def update
    @cap = Cap.find(params[:id])

    respond_to do |format|
      if @cap.update_attributes(params[:cap])
        format.html { redirect_to @cap, notice: 'Cap was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caps/1
  # DELETE /caps/1.json
  def destroy
    @cap = Cap.find(params[:id])
    @cap.destroy

    respond_to do |format|
      format.html { redirect_to caps_url }
      format.json { head :no_content }
    end
  end
end
