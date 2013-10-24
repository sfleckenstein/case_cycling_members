class SponsorshipOffersController < ApplicationController
  # GET /sponsorship_offers
  # GET /sponsorship_offers.json
  def index
    @sponsorship_offers = SponsorshipOffer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sponsorship_offers }
    end
  end

  # GET /sponsorship_offers/1
  # GET /sponsorship_offers/1.json
  def show
    @sponsorship_offer = SponsorshipOffer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sponsorship_offer }
    end
  end

  # GET /sponsorship_offers/new
  # GET /sponsorship_offers/new.json
  def new
    @sponsorship_offer = SponsorshipOffer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sponsorship_offer }
    end
  end

  # GET /sponsorship_offers/1/edit
  def edit
    @sponsorship_offer = SponsorshipOffer.find(params[:id])
  end

  # POST /sponsorship_offers
  # POST /sponsorship_offers.json
  def create
    @sponsorship_offer = SponsorshipOffer.new(params[:sponsorship_offer])

    respond_to do |format|
      if @sponsorship_offer.save
        format.html { redirect_to @sponsorship_offer, notice: 'Sponsorship offer was successfully created.' }
        format.json { render json: @sponsorship_offer, status: :created, location: @sponsorship_offer }
      else
        format.html { render action: "new" }
        format.json { render json: @sponsorship_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sponsorship_offers/1
  # PUT /sponsorship_offers/1.json
  def update
    @sponsorship_offer = SponsorshipOffer.find(params[:id])

    respond_to do |format|
      if @sponsorship_offer.update_attributes(params[:sponsorship_offer])
        format.html { redirect_to @sponsorship_offer, notice: 'Sponsorship offer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sponsorship_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sponsorship_offers/1
  # DELETE /sponsorship_offers/1.json
  def destroy
    @sponsorship_offer = SponsorshipOffer.find(params[:id])
    @sponsorship_offer.destroy

    respond_to do |format|
      format.html { redirect_to sponsorship_offers_url }
      format.json { head :no_content }
    end
  end
end
