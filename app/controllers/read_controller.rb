
class ReadController < ApplicationController

  def index
    ip = params[:ip]
    reader = Read.new
    result = reader.validate_ip_address ip
    render plain: result
  end
end