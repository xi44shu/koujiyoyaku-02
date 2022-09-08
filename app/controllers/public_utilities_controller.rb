class PublicUtilitiesController < ApplicationController

  def index
  end

  def new
    @publicUtility = PublicUtility.new
  end

  def create
    @publicUtility = PublicUtility.new(publicUtility_params)
    if @publicUtility.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def publicUtility_params
    params.permit(:pu_name )
  end

end
