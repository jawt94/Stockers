class WelcomeController < ApplicationController

  def index
    company = new_company("aapl")
    if company.save
      #render whatever json we need to pass back
      render json: company
    else
      #render an error message
      "Please double check the Stock Symbol"
    end
  end

end
