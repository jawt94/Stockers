class Homepage extends React.Component{
  constructor() {
    super();
    this.state = {
      isLogin: false,
      isItLogin: true
    }
    this.changeToTrue = this.changeToTrue.bind(this)
    this.changeToFalse = this.changeToFalse.bind(this)
  }

  changeToTrue(){
      this.setState({
        isItLogin: true
      })
  }

  changeToFalse(){
      this.setState({
        isItLogin: false
      })
  }

  render() {
    if (this.state.isLogin) {
      return(
        <h1>
         #portfolio component
        </h1>
      )
    } else if (this.state.isItLogin) {
      return(
        <div>
        <div className="container landing">
          <div>
            <header>
              <h1>Stockers</h1>
            </header>

            <section className="form-container">
              <div className="form-links">
                <button onClick={ this.changeToTrue } className="active">Log In</button>
                <button onClick={ this.changeToFalse } className="inactive">Sign Up</button>
              </div>
              <div className="">
                <h2>Welcome</h2>
              </div>
              <div className="">
                <Login />
              </div>
            </section>
          </div>
        </div>
        </div>
      )
    } else {
      return(
        <div>
        <div className="container landing">
          <div>
            <header>
              <h1>Stockers</h1>
            </header>

            <section className="form-container">
              <div className="form-links">
                <button onClick={ this.changeToTrue } className="inactive">Log In</button>
                <button onClick={ this.changeToFalse } className="active">Sign Up</button>
              </div>
              <div className="">
                <h2>Sign Up</h2>
              </div>
              <div className="">
              <Signup />
              </div>
            </section>
          </div>
        </div>
        </div>
      )
    }
  }
}
