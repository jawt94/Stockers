leila = User.create(name: "Leila", email: "l@l.com", password: "a")
leila.portfolios.create(name:"Equity", cash: 0)


andrew = User.create(name: "Andrew", email: "a@a.com", password: "a")
andrew.portfolios.create(name:"First portfolio", cash: 0)


tina = User.create(name: "Tina", email: "t@t.com", password: "a")
tina.portfolios.create(name:"High Risk", cash: 0)
tina.portfolios.create(name:"Low Risk", cash: 0)

fb = Company.create(name:"Facebook", ticker:"FB", purchase_price: 133.53, shares: 10, current_price: 133.53)

google = Company.create(name:"Google", ticker:"Googl", purchase_price: 846.55, shares: 10, current_price: 846.55)

ua = Company.create(name:"Under Armour", ticker:"UAA", purchase_price: 21.88, shares: 20, current_price: 21.88)


#API code to seed around 20 companies into the DB
