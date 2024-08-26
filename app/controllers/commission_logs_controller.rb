class CommissionLogsController < ApplicationController
  before_action :set_commission_log, only: %i[ show edit update destroy ]

  # GET /commission_logs or /commission_logs.json
  def index
    @commission_logs = CommissionLog.all
  end

  # GET /commission_logs/1 or /commission_logs/1.json
  def show
  end

  # GET /commission_logs/new
  def new
    @commission_log = CommissionLog.new
  end

  # GET /commission_logs/1/edit
  def edit
  end

  # POST /commission_logs or /commission_logs.json
  def create
    @commission_log = CommissionLog.new(commission_log_params)

    respond_to do |format|
      if @commission_log.save
        format.html { redirect_to commission_log_url(@commission_log), notice: "Commission log was successfully created." }
        format.json { render :show, status: :created, location: @commission_log }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @commission_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commission_logs/1 or /commission_logs/1.json
  def update
    respond_to do |format|
      if @commission_log.update(commission_log_params)
        format.html { redirect_to commission_log_url(@commission_log), notice: "Commission log was successfully updated." }
        format.json { render :show, status: :ok, location: @commission_log }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @commission_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commission_logs/1 or /commission_logs/1.json
  def destroy
    @commission_log.destroy!

    respond_to do |format|
      format.html { redirect_to commission_logs_url, notice: "Commission log was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commission_log
      @commission_log = CommissionLog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def commission_log_params
      params.require(:commission_log).permit(:date, :percentage, :price, :calculated_commission, :dog_id, :user_id)
    end
end
