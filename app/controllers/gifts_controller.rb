class GiftsController < ApplicationController
  before_action :set_gift, only: %i[ destroy ]
  load_and_authorize_resource

  # GET /gifts or /gifts.json
  def index

    @user = ( params[:user_id] ? User.find(params[:user_id]) : current_user )

    @gifts = Gift.where(user_id: @user&.id)
  end

  # GET /gifts/new
  def new
    who = Who.find_by(id: Who.ids.sample)
    what = What.find_by(id: What.ids.sample)
    why = Why.find_by(id: Why.ids.sample)
    @gift = Gift.new(who: who, what: what, why: why)
  end

  # POST /gifts or /gifts.json
  def create
    @gift = Gift.new(gift_params)

    respond_to do |format|
      if @gift.save
        format.html { redirect_to root_path, notice: "Gift was successfully created." }
        format.json { render :index, status: :created, location: @gift }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gift.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gifts/1 or /gifts/1.json
  def destroy
    @gift.destroy
    respond_to do |format|
      format.html { redirect_to gifts_url, notice: "Gift was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gift
      @gift = Gift.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gift_params
      params.require(:gift).permit(:who_id, :what_id, :why_id, :user_id)
    end
end
