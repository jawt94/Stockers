class Login extends React.Component{
  constructor() {
    super();
  }

  render() {
    let csrfToken = $('meta[name=csrf-token]').attr('content')
    return(
    <div>
    <form className="" action="/sessions/login" method="post" >
      <div className="form-group">
        <input type='hidden' name='authenticity_token' value={csrfToken} />
        <input className="form-control" type="email" name="session[email]" placeholder="Email Address" ref="email" />
      </div>
      <div className="form-group">
        <input className="form-control" type="password" name="session[password]" placeholder="Password" ref="password" />
      </div>
      <button type="submit" className="btn btn-success btn-lg btn-block">Log In</button>
    </form>
    </div>
    )
  }
}
