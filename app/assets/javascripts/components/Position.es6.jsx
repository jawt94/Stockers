class position extends React.Component{
  constructor() {
    super();
    this.state = {
      stock_info: []
    }
  }

  componentWillMount(){
    let stock_info = this.props.stock_info
    debugger;
    this.setState({
      stock_info: stock_info
    })
  }

  render() {
    return(
      <div id ="positions-holder" className="container summary position">
        <header>
          <section>
            <h1>Positions</h1>
          </section>
          <section className="snapshot">
            <div>
              <p>$350,000.00</p>
              <p>TOTAL ACCOUNT VALUE</p>
            </div>
            <div>
              <p className="gainer">+$150.31</p>
              <p>DAY'S RETURN</p>
            </div>
            <div>
              <p className="gainer">+$15,399.31</p>
              <p>TOTAL RETURN</p>
            </div>
          </section>
        </header>

        <section className="items">
            <section className="headings">
              <span className="ticker-data">Ticker</span>
              <span className="company-data">Company</span>
              <span className="center"># of Shares</span>
              <span className="center">Original PPS</span>
              <span className="center">Market PPS</span>
              <span className="center">Cost Basis</span>
              <span className="center">Market Value</span>
              <span className="center">Gain / Loss</span>
            </section>
            <section className="item">
              <span className="ticker-data">NFLX</span>
              <span className="company-data">Netflix, Inc.</span>
              <span className="center">55</span>
              <span className="center">140.23</span>
              <span className="center">142.22</span>
              <span className="center">7,712.65</span>
              <span className="center">7,822.10</span>
              <span className="change center gainer">99.45</span>
            </section>
            <section className="item">
              <span className="ticker-data">AMZN</span>
              <span className="company-data">Amazon.com, Inc.</span>
              <span className="center">100</span>
              <span className="center">850.00</span>
              <span className="center">845.00</span>
              <span className="center">85,000.00</span>
              <span className="center">84,500.00</span>
              <span className="change center loser">-500.00</span>
            </section>
        </section>
      </div>
    )
  }
}
