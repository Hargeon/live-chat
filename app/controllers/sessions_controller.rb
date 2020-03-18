class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    head :no_content
    ActionCable.server.broadcast('session_channel', session_params)
  end

  private

  def session_params
    params.permit(:type, :from, :to, :sdp, :candidate)
  end
end
