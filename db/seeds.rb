leila = User.create(name: "Leila", email: "l@l.com", password: "a")
leila.portfolios.create(name:"Equity", cash: 0)


andrew = User.create(name: "Andrew", email: "a@a.com", password: "a")
andrew.portfolios.create(name:"First portfolio", cash: 0)


tina = User.create(name: "Tina", email: "t@t.com", password: "a")
tina.portfolios.create(name:"High Risk", cash: 0)
bob = tina.portfolios.create(name:"Low Risk", cash: 0)

fb = Company.create(name:"Facebook", ticker:"FB", current_price: 133.53)

google = Company.create(name:"Google", ticker:"Googl", current_price: 846.55)

ua = Company.create(name:"Under Armour", ticker:"UAA", current_price: 21.88)



bob.stocks.create(company_id: 1, shares: 10, purchase_price: 133.53)
bob.stocks.create(company_id: 2, shares: 10, purchase_price: 846.55)
bob.stocks.create(company_id: 3, shares: 10, purchase_price: 21.88)
