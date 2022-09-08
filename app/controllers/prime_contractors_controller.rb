class PrimeContractorsController < ApplicationController

  def index
  end

  def new
    @primecontractor = PrimeContractor.new
  end

  def create
    @primecontractor = PrimeContractor.new(primecontractor_params)
    if @primecontractor.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def primecontractor_params
    params.permit(:pc_name, :pc_contact_person, :pc_telephone)
  end

end
