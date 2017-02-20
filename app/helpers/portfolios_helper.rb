module PortfoliosHelper
  def find_portfolio
    @portfolio = Portfolio.find_by(id: params[:portfolio_id])
  end
end
