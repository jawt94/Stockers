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

  def portfolio_order
    #add crrent user --------------------------------
    port = Portfolio.find_by_id(16)
    portfolio_order = []

    port.stocks.each do |stock|
        portfolio_order << stock
    end
    portfolio_order.sort_by! { |stock| stock.percent_change }
  end

  def portfolio_top
    case
    when portfolio_order.length >= 10
        top_five = portfolio_order[0...5]

      when portfolio_order.length == 9
        top_five = portfolio_order[0...4]

      when portfolio_order.length == 8
        top_five = portfolio_order[0...4]

      when portfolio_order.length == 7
        top_five = portfolio_order[0...3]

      when portfolio_order.length == 6
        top_five = portfolio_order[0...3]

      when portfolio_order.length == 5
        top_five = portfolio_order[0...2]

      when portfolio_order.length == 4
        top_five = portfolio_order[0...2]

      when portfolio_order.length <= 3
        top_five = portfolio_order[0...1]
    end
    top_five
  end

  def portfolio_bottom
    case
    when portfolio_order.length >= 10
        bottom_five = portfolio_order.pop(5)

      when portfolio_order.length == 9
        bottom_five = portfolio_order.pop(4)

      when portfolio_order.length == 8
        bottom_five = portfolio_order.pop(4)

      when portfolio_order.length == 7
        bottom_five = portfolio_order.pop(3)

      when portfolio_order.length == 6
        bottom_five = portfolio_order.pop(3)

      when portfolio_order.length == 5
        bottom_five = portfolio_order.pop(2)

      when portfolio_order.length == 4
        bottom_five = portfolio_order.pop(2)

      when portfolio_order.length <= 3
        bottom_five = portfolio_order.pop(1)
    end
    bottom_five
  end

  def total_profit
    stocks = portfolio_order
    total = 0
    stocks.each do |stock|
      total += stock.pnl
    end
    total
  end

#
#
def portfolio_info
  info = {}
  info['top'] = portfolio_top
  # call this on the object ---  .percent_change
  info['bottom'] = portfolio_bottom
  # call this on the object ---  .percent_change
  info['allocation'] = []

  portfolio_order.each do |stock|
    info['allocation'] << stock
    # call this on the object ---  .percentage(total_profit)
  end
end
end
