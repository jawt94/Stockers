module PortfoliosHelper
  def find_portfolio
    @portfolio = Portfolio.find_by(id: params[:portfolio_id])
  end

  def subtract_cash(amount)
    @portfolio.cash -= amount
  end
end
