class PortfoliosController < ApplicationController
  def index
    #this will have info to add a portfolio
  end

  def show
    require_user
    if find_portfolio.stocks.length == 0
      render 'No stocks are available'
    else
      render json: portfolio_info
    end
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
