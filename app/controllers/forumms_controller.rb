class ForummsController < ApplicationController
  before_action :set_forumm, only: [:show, :edit, :update, :destroy]

  # GET /forumms
  # GET /forumms.json
  def index
    @forumms = Forumm.all
  end

  # GET /forumms/1
  # GET /forumms/1.json
  def show
  end

  # GET /forumms/new
  def new
    @forumm = Forumm.new
  end

  # GET /forumms/1/edit
  def edit
  end

  # POST /forumms
  # POST /forumms.json
  def create
    @forumm = Forumm.new(forumm_params)

    respond_to do |format|
      if @forumm.save
        format.html { redirect_to @forumm, notice: 'Forumm was successfully created.' }
        format.json { render action: 'show', status: :created, location: @forumm }
      else
        format.html { render action: 'new' }
        format.json { render json: @forumm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forumms/1
  # PATCH/PUT /forumms/1.json
  def update
    respond_to do |format|
      if @forumm.update(forumm_params)
        format.html { redirect_to @forumm, notice: 'Forumm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @forumm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forumms/1
  # DELETE /forumms/1.json
  def destroy
    @forumm.destroy
    respond_to do |format|
      format.html { redirect_to forumms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forumm
      @forumm = Forumm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forumm_params
      params.require(:forumm).permit(:name, :description)
    end
end
