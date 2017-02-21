class Portfolios extends React.Component{
  render(){
    return(
      <div className="container summary">
        <header>
          <section className="buy">
            Google - GOOGL - Current Price: 142.22
            <form className="" action="index.html" method="post">
              <input type="text" name="" value="" placeholder="# of shares"/>
              <input type="submit" name="" value="Buy"/>
            </form>
          </section>
          <br/>
          <section className="acc-balance">
            <h2>Your account balance is: <span>$350</span></h2>
          </section>
        </header>

      <div>

      </div>

        <section className="charts-container">
          <section className="chart margin-right">
            <section>
            </section>
          </section>

          <section className="chart gainers margin-right">
            <section>
            </section>
          </section>

          <section className="chart losers">
            <section>
            </section>
          </section>
          <section className="detail-link">
            <a href="/positions">View your positions</a>
          </section>
        </section>
      </div>

    )
  }
}
