class LandingsController < ApplicationController
  def index
    if current_user
      redirect_to info_path
    end
  end
end
