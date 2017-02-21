class Login extends React.Component{
  constructor() {
    super();
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  handleSubmit(e) {
    e.preventDefault();
    let user_params = {session: {email: this.refs.email.value, password: this.refs.password.value}}
    $.ajax({
      url: '/sessions/login',
      method: 'post',
      data: user_params
    }).done(response => {
      // debugger;
      console.log(response)
    })
  }

  render() {
    return(
    <div>
    <form className="" action="" method="post" onSubmit={this.handleSubmit}>
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
