class FlocksController < ApplicationController
  before_action :set_flock, only: %i[ show edit update destroy ]

  # GET /flocks or /flocks.json
  def index
    @flocks = Flock.paginate(:page => params[:page], :per_page=> 10)
    @statuses = Status.all
    @types = Type.all
  end

  # GET /flocks/1 or /flocks/1.json
  def show
  end

  # GET /flocks/new
  def new
    @flock = Flock.new
  end

  # GET /flocks/1/edit
  def edit
  end

  # POST /flocks or /flocks.json
  def create
    @flock = Flock.new(flock_params)

    if @flock.save
      redirect_to @flock, notice: "flock was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /flocks/1 or /flocks/1.json
  def update
    if @flock.update(flock_params)
      redirect_to @flock, notice: "flock was successfully updated."
    else
      render :edit, status: :unprocessable_entity 
    end
  end

  # DELETE /flocks/1 or /flocks/1.json
  def destroy
    @flock.destroy
      redirect_to flocks_url, notice: "flock was successfully destroyed." 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flock
      @flock = Flock.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flock_params
      params.require(:flock).permit(:batch_no, :date_in, :expected_retirement_date, 
      :source, :flock_stored, :initial_stock, 
      :current_stock, :age, :notes, :status_id, :type_id)
    end
end
