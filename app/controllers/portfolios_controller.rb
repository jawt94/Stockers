class PortfoliosController < ApplicationController
  def index
    @portfolios = current_user.portfolios
  end

  def new
    @portfolio = current_user.portfolios.new
  end

  def create
    @portfolio = current_user.portfolios.new(portfolio_params)
  end

  def update

  end

  def destroy

  end

  def stock_params
    params.request(:stock).permit(:shares, :purchase_price)
  end

end
