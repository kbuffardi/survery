class DemographicsController < ApplicationController
before_filter :authenticate_user!

  def demographics
    @survey = current_user.survey
    @demographic = Demographic.new
    @demographic.survey_id = @survey
  end

  def thank_you
  end

  def new
    Demographic.new
    end

  def create
    @demographic = Demographic.new(params[:demographic])
    if @demographic.save
      redirect_to thank_you_path, alert: 'Demographic was successfully created.'
    else
      flash.alert "fail"
    end
  end

end
