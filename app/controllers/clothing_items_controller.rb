class ClothingItemsController < ApplicationController
  # GET /clothing_items
  # GET /clothing_items.json
  def index
    @clothing_items = ClothingItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clothing_items }
    end
  end

  # GET /clothing_items/1
  # GET /clothing_items/1.json
  def show
    @clothing_item = ClothingItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clothing_item }
    end
  end

  # GET /clothing_items/new
  # GET /clothing_items/new.json
  def new
    @clothing_item = ClothingItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clothing_item }
    end
  end

  # GET /clothing_items/1/edit
  def edit
    @clothing_item = ClothingItem.find(params[:id])
  end

  # POST /clothing_items
  # POST /clothing_items.json
  def create
    @clothing_item = ClothingItem.new(params[:clothing_item])

    respond_to do |format|
      if @clothing_item.save
        format.html { redirect_to @clothing_item, notice: 'Clothing item was successfully created.' }
        format.json { render json: @clothing_item, status: :created, location: @clothing_item }
      else
        format.html { render action: "new" }
        format.json { render json: @clothing_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clothing_items/1
  # PUT /clothing_items/1.json
  def update
    @clothing_item = ClothingItem.find(params[:id])

    respond_to do |format|
      if @clothing_item.update_attributes(params[:clothing_item])
        format.html { redirect_to @clothing_item, notice: 'Clothing item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @clothing_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clothing_items/1
  # DELETE /clothing_items/1.json
  def destroy
    @clothing_item = ClothingItem.find(params[:id])
    @clothing_item.destroy

    respond_to do |format|
      format.html { redirect_to clothing_items_url }
      format.json { head :no_content }
    end
  end
end
