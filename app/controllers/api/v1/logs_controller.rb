class Api::V1::LogsController < ApplicationController

  def index
    @logs = Log.all
    render json: @logs
  end

end