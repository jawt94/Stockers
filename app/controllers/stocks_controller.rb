class StocksController < ApplicationController

  def index
    find_portfolio
    @stocks = @portfolio.stocks
  end

  def create
    @stock=@portfolio.stocks.new(stock_params)
      #helper that subtracts amount from portfolio
    if @stock.save
      redirect_to portfolio_path(params[:portfolio_id])
    else
      @errors = @post.errors.full_messages
      redirect_to portfolio_path(params[:portfolio_id])
    end
  end

  def show
    find_stock
  end

  def update
    find_stock
    ##TBD!!!!!!
  end

  def destroy
    find_stock
    @stock.destroy
  end

  private

  def stock_params
    params.request(:stock).permit(:shares, :purchase_price)
  end

end
