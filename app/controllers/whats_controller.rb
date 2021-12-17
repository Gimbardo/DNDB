class WhatsController < ApplicationController
  before_action :set_what, only: %i[ edit update destroy ]
  load_and_authorize_resource

  # GET /whats or /whats.json
  def index
    @whats = What.all
  end

  # GET /whats/new
  def new
    @what = What.new
  end

  # GET /whies/1/edit
  def edit
  end

  # POST /whats or /whats.json
  def create
    @what = What.new(what_params)

    respond_to do |format|
      if @what.save
        format.html { redirect_to whats_path, notice: "What was successfully created." }
        format.json { render :index, status: :created, location: @what }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @what.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whies/1 or /whies/1.json
  def update
    respond_to do |format|
      if @why.update(why_params)
        format.html { redirect_to whats_path, notice: "Why was successfully updated." }
        format.json { render :index, status: :ok, location: @why }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @why.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whats/1 or /whats/1.json
  def destroy
    @what.destroy
    respond_to do |format|
      format.html { redirect_to whats_url, notice: "What was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_what
      @what = What.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def what_params
      params.require(:what).permit(:content)
    end
end
