User.destroy_all
Stock.destroy_all
Company.destroy_all

leila = User.create(name: "test", email: "l@l.com", password: "123123")
leila.portfolios.create(name:"Equity", cash: 0)


andrew = User.create(name: "Andrew", email: "a@a.com", password: "123123")
andrew.portfolios.create(name:"First portfolio", cash: 0)


tina = User.create(name: "Tina", email: "t@t.com", password: "123123")
bob_1 = tina.portfolios.create(name:"High Risk", cash: 0)
bob = tina.portfolios.create(name:"Low Risk", cash: 0)

fb = Company.create(name:"Facebook", ticker:"FB", current_price: 133.53)

google = Company.create(name:"Google", ticker:"Googl", current_price: 846.55)

apple = Company.create(name:"Apple", ticker:"AAPL", current_price: 136.51)



bob_1.stocks.create(company_id: fb.id, shares: 10, purchase_price: 133.53)
bob_1.stocks.create(company_id: google.id, shares: 10, purchase_price: 846.55)
bob_1.stocks.create(company_id: apple.id, shares: 10, purchase_price: 136.51)

bob.stocks.create(company_id: fb.id, shares: 10, purchase_price: 133.53)
bob.stocks.create(company_id: google.id, shares: 10, purchase_price: 846.55)
bob.stocks.create(company_id: apple.id, shares: 10, purchase_price: 136.51)
