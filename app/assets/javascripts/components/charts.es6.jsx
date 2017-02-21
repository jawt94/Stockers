class Charts extends React.Component{
  render(){
    return(

      <div className="containerpie">
        <div id="chart-3" data-pie="piedata3" data-pie-label="Allocation"></div>
        <div id="chart-2" data-pie="piedata2" data-pie-label="Top Stock Gain"></div>
        <div id="chart" data-pie="piedata" data-pie-label="Top Stock Loss"></div>
      </div>
    )
  }
}
