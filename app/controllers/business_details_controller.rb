class BusinessDetailsController < ApplicationController
  before_action :set_business_detail, only: [:show, :edit, :update, :destroy]

  # GET /business_details
  # GET /business_details.json
  def index
    @business_details = BusinessDetail.all
  end

  # GET /business_details/1
  # GET /business_details/1.json
  def show
  end

  # GET /business_details/new
  def new
    @business_detail = BusinessDetail.new
  end

  # GET /business_details/1/edit
  def edit
  end

  # POST /business_details
  # POST /business_details.json
  def create
    @business_detail = BusinessDetail.new(business_detail_params)

    respond_to do |format|
      if @business_detail.save
        format.html { redirect_to @business_detail, notice: 'Business detail was successfully created.' }
        format.json { render :show, status: :created, location: @business_detail }
      else
        format.html { render :new }
        format.json { render json: @business_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_details/1
  # PATCH/PUT /business_details/1.json
  def update
    respond_to do |format|
      if @business_detail.update(business_detail_params)
        format.html { redirect_to @business_detail, notice: 'Business detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_detail }
      else
        format.html { render :edit }
        format.json { render json: @business_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_details/1
  # DELETE /business_details/1.json
  def destroy
    @business_detail.destroy
    respond_to do |format|
      format.html { redirect_to business_details_url, notice: 'Business detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_detail
      @business_detail = BusinessDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_detail_params
      params.require(:business_detail).permit(:description, :website, :phone, :email, :facebook, :twitter, :business_id)
    end
end
