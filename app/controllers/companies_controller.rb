class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    company = new_company("googl")
    if company.save
      #render whatever json we need to pass back
      render json: company
    else
      #render an error message
      "noooo"
    end
  end
end
