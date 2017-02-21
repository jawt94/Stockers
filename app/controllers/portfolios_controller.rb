class PortfoliosController < ApplicationController
  def index
    binding.pry
    require_user
     @portfolios = current_user.portfolio.top_five
    # @portfolio = Portfolio.find(4)
    # @bob = @portfolio.stocks.first.current_price
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

  def positions

  end

end
