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
    @survey = current_user.survey
    @demographic = Demographic.new(demographic_params)
    if @demographic.save
      redirect_to survey_two_path
    else
      flash.alert "There was an error, please contact lcramer3@mail.csuchico with the page URL for assistance. Thank you."
    end
  end

  def survey_two
  end

  def survey_three
  end

private
  def demographic_params
    params.require(:demographic).permit( :work, :income, :eating_disorder, :ethnicity, :ethnicity_other, :age, :gender, :survey_id, :height_feet, :height_inches, :weight, :raffle, :alcohol_consumption,
                                    weight_management_practices: [], weight_management_practices_other: [],medical_conditions: [], medical_conditions_other:[] )
  end

end
