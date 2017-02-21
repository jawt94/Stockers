class Signup extends React.Component{
  constructor() {
    super();
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  handleSubmit(e) {
    e.preventDefault();
    let user_input = {user: {first_name: this.refs.first_name.value, last_name: this.refs.last_name.value, email: this.refs.email.value, password: this.refs.password.value}}
    $.ajax({
      url: '/users',
      method: 'post',
      data: user_input
    }).done(response => {
      console.log(response )
    })
  }

  render() {
    return(
      <div class="container landing">
        <div>
          <header>
            <h1>Stockers</h1>
          </header>

          <section class="form-container">
            <div class="form-links">
              <a class="inactive" href="/">Log In</a>
              <a class="active" href="/signup">Sign Up</a>
            </div>
            <div class="">
              <h2>Sign Up</h2>
            </div>
            <div class="">
              <form class="" action="" method="post">
                <div class="form-group name">
                  <input class="form-control" type="email" name="name" placeholder="First Name" />
                </div>
                <div class="form-group name">
                  <input class="form-control" type="email" name="name" placeholder="Last Name" />
                </div>
                <div class="form-group">
                  <input class="form-control" type="email" name="name" placeholder="Email Address" />
                </div>
                <div class="form-group">
                  <input class="form-control" type="password" name="name" placeholder="Password" />
                </div>
                <button type="submit" class="btn btn-success btn-lg btn-block">Log In</button>
              </form>
            </div>
          </section>
        </div>
      </div>
    )
  }
}
