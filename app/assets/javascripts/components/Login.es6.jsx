class Login extends React.Component{
  constructor() {
    super();
  }

  render() {
    return(
    <div>
    <form className="" action="/sessions/login" method="post" >
      <div className="form-group">
        <input className="form-control" type="email" name="user[email]" placeholder="Email Address" ref="email" />
      </div>
      <div className="form-group">
        <input className="form-control" type="password" name="user[password]" placeholder="Password" ref="password" />
      </div>
      <button type="submit" className="btn btn-success btn-lg btn-block">Log In</button>
    </form>
    </div>
    )
  }
}
