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

  # def edit
  #   find_portfolio
  # end

  def update
    find_portfolio
    if authorized?(@portfolio.user_id) && @portfolio.update(portfolio_params)
      redirect_to portfolio_path(@portfolio.id)
  end

  def destroy
    find_portfolio
    @id = @portfolio.user_id
    if authorized(@id)
      @portfolio.destroy
    end
    redirect_to user_path(@id)
  end

  def portfolio_params
    params.request(:portfolio).permit(:name, :cash)
  end

end
