class Homepage extends React.Component{
  constructor() {
    super();
    this.state = {
      isLogin: false
    }
  }

  render() {
    if (this.state.isLogin) {
      return(
        <h1>
         #portfolio component
        </h1>
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
                <a className="active" href="/">Log In</a>
                <a className="inactive" href="/signup">Sign Up</a>
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
    }
  }
}
