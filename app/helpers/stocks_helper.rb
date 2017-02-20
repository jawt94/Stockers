module StocksHelper
  def find_stock
    @stock = Stock.find_by(id: params[:id])
  end

  def validate_purchase
    find_portfolio
    @portfolio.cash>=self.value
  end
end
