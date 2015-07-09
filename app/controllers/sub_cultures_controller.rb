class SubCulturesController < ApplicationController
  before_action :set_sub_culture, only: [:show, :edit, :update, :destroy]

  # GET /sub_cultures
  # GET /sub_cultures.json
  def index
    @sub_cultures = SubCulture.all
  end

  # GET /sub_cultures/1
  # GET /sub_cultures/1.json
  def show
  end

  # GET /sub_cultures/new
  def new
    @sub_culture = SubCulture.new
  end

  # GET /sub_cultures/1/edit
  def edit
  end

  # POST /sub_cultures
  # POST /sub_cultures.json
  def create
    @sub_culture = SubCulture.new(sub_culture_params)

    respond_to do |format|
      if @sub_culture.save
        format.html { redirect_to @sub_culture, notice: 'Sub culture was successfully created.' }
        format.json { render :show, status: :created, location: @sub_culture }
      else
        format.html { render :new }
        format.json { render json: @sub_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_cultures/1
  # PATCH/PUT /sub_cultures/1.json
  def update
    respond_to do |format|
      if @sub_culture.update(sub_culture_params)
        format.html { redirect_to @sub_culture, notice: 'Sub culture was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_culture }
      else
        format.html { render :edit }
        format.json { render json: @sub_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_cultures/1
  # DELETE /sub_cultures/1.json
  def destroy
    @sub_culture.destroy
    respond_to do |format|
      format.html { redirect_to sub_cultures_url, notice: 'Sub culture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_culture
      @sub_culture = SubCulture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_culture_params
      params.require(:sub_culture).permit(:culture_id)
    end
end
