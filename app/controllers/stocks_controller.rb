class StocksController < ApplicationController


  def recent
  
  end

  def create
    @stock=@portfolio.stocks.new(stock_params)
      #helper that subtracts amount from portfolio
    if @stock.save && @stock.validate_purchase
      redirect_to portfolio_path(params[:portfolio_id])
    else
      @errors = @post.errors.full_messages
      redirect_to portfolio_path(params[:portfolio_id])
    end
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
