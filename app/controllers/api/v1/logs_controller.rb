class Api::V1::LogsController < ApplicationController
  include Response

  before_action :find_log, only: [:show, :update, :destroy]

  def index
    @logs = Log.all
    json_response(@logs)
  end

  def show
    json_response(@log)
  end

  def create
    @log = Log.create!(logs_params)
    json_response(@log, :created)
  end

  def update
    @log.update!(logs_params)
    head :no_content
  end

  def destroy
    @log.destroy!
    head :no_content
  end

  private

  def find_log
    @log = Log.find(params[:id])
  end

  def logs_params
    params.require(:log).permit(:what, :when, :where, :done)
  end

end
