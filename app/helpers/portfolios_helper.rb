module PortfoliosHelper
  def find_portfolio
    @portfolio = Portfolio.find_by(id: params[:portfolio_id])
  end

  def subtract_cash(amount)
    @portfolio.cash -= amount
  end

  def stock_info(stock)
    info={ company_name: stock.name,
           ticker: stock.ticker,
           current_price: stock.current_price,
           current_value: stock.current_value,
           purchase_price: stock.purchase_price,
           cost_basis: stock.cost_basis,
           profit_and_loss: stock.pnl,
           shares: stock.shares }
  end

  def top_five
    binding.pry
    self.stocks 
  end

end
