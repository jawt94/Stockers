class Signup extends React.Component{
  constructor() {
    super();
  }

  render() {
      let csrfToken = $('meta[name=csrf-token]').attr('content')
    return(
    <div>
    <form className="" action="/sessions/login" method="post">
      <div className="form-group name">
      <input type='hidden' name='authenticity_token' value={csrfToken} />
        <input className="form-control" type="text" name="user[name]" placeholder="Name" />
      </div>
      {/* <div className="form-group name">
        <input className="form-control" type="text" name="user[name]" placeholder="Last Name" />
      </div> */}
      <div className="form-group">
        <input className="form-control" type="email" name="user[email]" placeholder="Email Address" />
      </div>
      <div className="form-group">
        <input className="form-control" type="password" name="user[password]" placeholder="Password" />
      </div>
      <button type="submit" className="btn btn-success btn-lg btn-block">Sign up</button>
    </form>
    </div>
    )
  }
}
