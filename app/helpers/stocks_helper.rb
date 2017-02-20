module StocksHelper
  def find_stock
    @stock = Stock.find_by(id: params[:id])
  end
end
