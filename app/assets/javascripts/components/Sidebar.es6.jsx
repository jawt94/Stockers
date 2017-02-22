class sideBar extends React.Component{
  constructor() {
    super();
    // this.state = {
    //   current_user: ""
    // }
  }

  // componentWillMount() {
  //   debugger;
  //   let current_user = this.props.current_user
  //   this.setState({
  //     current_user: current_user
  //   })
  // }

  render(){
    let portfolios = ["Julia", "Pan", "Phil"]
    return(
      <div>
        <nav className="w3-sidenav w3-collapse w3-white w3-animate-left" id="mySidenav"><br />
          <div className="w3-container w3-row">
            <div className="w3-col s10">
              <span><strong>Tina</strong></span><br />
              <a href="#"><i className="fa fa-user"></i>Create New Portfolio</a>
            </div>
          </div>
          <hr />
          <div className="w3-container">
            <h5>Portfolios</h5>
          </div>
          {portfolios.map((portfolio, idx) =>{
            return (<a key={idx} href="#" className="w3-padding"><i className="fa fa-diamond fa-fw"></i>{portfolio} 1</a>)
          })}
          <a href="#" className="w3-padding"><i className="fa fa-cog fa-fw"></i>Edit User Profile</a><br /><br />
        </nav>
      </div>
    )
  }
}
