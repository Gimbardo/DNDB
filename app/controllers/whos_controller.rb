class WhosController < ApplicationController
  before_action :set_who, only: %i[ edit update destroy ]
  load_and_authorize_resource

  # GET /whos or /whos.json
  def index
    @whos = Who.all
  end

  # GET /whos/new
  def new
    @who = Who.new
  end

  # GET /whos/1/edit
  def edit
  end

  # POST /whos or /whos.json
  def create
    @who = Who.new(who_params)

    respond_to do |format|
      if @who.save
        format.html { redirect_to @who, notice: "Who was successfully created." }
        format.json { render :index, status: :created, location: @who }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @who.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whos/1 or /whos/1.json
  def update
    respond_to do |format|
      if @who.update(who_params)
        format.html { redirect_to @who, notice: "Who was successfully updated." }
        format.json { render :index, status: :ok, location: @who }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @who.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whos/1 or /whos/1.json
  def destroy
    @who.destroy
    respond_to do |format|
      format.html { redirect_to whos_url, notice: "Who was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_who
      @who = Who.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def who_params
      params.require(:who).permit(:content)
    end
end
