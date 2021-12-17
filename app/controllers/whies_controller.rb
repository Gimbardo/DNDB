class WhiesController < ApplicationController
  before_action :set_why, only: %i[ edit update destroy ]
  load_and_authorize_resource

  # GET /whies or /whies.json
  def index
    @whies = Why.all
  end

  # GET /whies/new
  def new
    @why = Why.new
  end

  # GET /whies/1/edit
  def edit
  end

  # POST /whies or /whies.json
  def create
    @why = Why.new(why_params)

    respond_to do |format|
      if @why.save
        format.html { redirect_to @why, notice: "Why was successfully created." }
        format.json { render :index, status: :created, location: @why }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @why.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whies/1 or /whies/1.json
  def update
    respond_to do |format|
      if @why.update(why_params)
        format.html { redirect_to @why, notice: "Why was successfully updated." }
        format.json { render :index, status: :ok, location: @why }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @why.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whies/1 or /whies/1.json
  def destroy
    @why.destroy
    respond_to do |format|
      format.html { redirect_to whies_url, notice: "Why was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_why
      @why = Why.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def why_params
      params.require(:why).permit(:content)
    end
end
