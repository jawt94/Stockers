class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    company = new_company("googl")
    if company.save
      render json: company
    else
      "That is not a company ticker. Please enter an accurate ticker"
    end
  end
end
