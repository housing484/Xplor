class ApartmentswsController < ApplicationController
  before_action :set_apartmentsw, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  # GET /apartmentsws
  # GET /apartmentsws.json
  def index
    @apartmentsws = Apartmentsw.all
  end

  # GET /apartmentsws/1
  # GET /apartmentsws/1.json
  def show
  end

  # GET /apartmentsws/new
  def new
    @apartmentsw = Apartmentsw.new
  end

  # GET /apartmentsws/1/edit
  def edit
  end

  # POST /apartmentsws
  # POST /apartmentsws.json
  def create
    @apartmentsw = Apartmentsw.new(apartmentsw_params)

    respond_to do |format|
      if @apartmentsw.save
        format.html { redirect_to @apartmentsw, notice: 'Apartmentsw was successfully created.' }
        format.json { render :show, status: :created, location: @apartmentsw }
      else
        format.html { render :new }
        format.json { render json: @apartmentsw.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apartmentsws/1
  # PATCH/PUT /apartmentsws/1.json
  def update
    respond_to do |format|
      if @apartmentsw.update(apartmentsw_params)
        format.html { redirect_to @apartmentsw, notice: 'Apartmentsw was successfully updated.' }
        format.json { render :show, status: :ok, location: @apartmentsw }
      else
        format.html { render :edit }
        format.json { render json: @apartmentsw.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apartmentsws/1
  # DELETE /apartmentsws/1.json
  def destroy
    @apartmentsw.destroy
    respond_to do |format|
      format.html { redirect_to apartmentsws_url, notice: 'Apartmentsw was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartmentsw
      @apartmentsw = Apartmentsw.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apartmentsw_params
      params.require(:apartmentsw).permit(:title, :body, :body, :user_id, :image,{avatars: []})
    end
end
