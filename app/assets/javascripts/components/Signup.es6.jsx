class Signup extends React.Component{
  constructor() {
    super();
  }

  render() {
    return(
    <div>
    <form className="" action="/sessions/login" method="post">
      <div className="form-group name">
        <input className="form-control" type="email" name="name" placeholder="First Name" />
      </div>
      <div className="form-group name">
        <input className="form-control" type="email" name="name" placeholder="Last Name" />
      </div>
      <div className="form-group">
        <input className="form-control" type="email" name="name" placeholder="Email Address" />
      </div>
      <div className="form-group">
        <input className="form-control" type="password" name="name" placeholder="Password" />
      </div>
      <button type="submit" className="btn btn-success btn-lg btn-block">Sign up</button>
    </form>
    </div>
    )
  }
}
