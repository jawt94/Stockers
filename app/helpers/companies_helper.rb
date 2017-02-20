module CompaniesHelper
  def new_company(ticker)
    yahoo_client = YahooFinance::Client.new
    data = yahoo_client.quotes([ticker], [:bid, :name, :symbol], {raw: false})
    response = data[0]
    @company = Company.new(name: response["name"], current_price: response['bid'], ticker: response['symbol'])
  end
end
