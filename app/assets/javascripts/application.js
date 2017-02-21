// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var gradients = [
  {id: 'teal', start: '#93d9c5', end: '#1ab086'},
  {id: 'blue', start: '#095a82', end: '#0170a7'},
  {id: 'dark-teal', start: '#158794', end: '#0b555c'},
  {id: 'green', start: '#5b7964', end: '#869d8d'},
  {id: 'aqua', start: '#3f6071', end: '#588094'},
  {id: 'other', start: '#2272ad', end: '#308cd0'}
];

var data = [];

data['piedata'] = [
  { label: "GOOGL", value: 25, color: 'dark-teal' },
  { label: "APPL", value: 22, color: 'blue' },
  { label: "SYNT", value: 31, color: 'teal' },
  { label: "CSCL", value: 14, color: 'green' },
  { label: "DISN", value: 6, color: 'other' },
  { label: "HOND", value: 2, color: 'aqua' }
];

data['piedata2'] = [
  { label: "GMV", value: 20, color: 'blue' },
  { label: "CVS", value: 10, color: 'teal' },
  { label: "DISN", value: 35, color: 'other' },
  { label: "HOND", value: 30, color: 'aqua' },
  { label: "CSCL", value: 5, color: 'green' }
];

data['piedata3'] = [
  { label: "REAL ESTATE INV TRUST", value: 5, color: 'blue' },
  { label: "LARGE CAP", value: 10, color: 'teal' },
  { label: "SMALL CAP", value: 30, color: 'other' },
  { label: "MID CAP", value: 15, color: 'aqua' },
  { label: "FIXED INCOME SEC", value: 40, color: 'dark-teal' }
];

$(document).ready(function() {
  $('[data-pie]').each(function() {
    var chartId = '#' + $(this).attr('id');
    var chartLabel = $(this).attr('data-pie-label');
    var piedata = data[$(this).attr('data-pie')];

    var width = 300,
    height = 300,
    radius = 140;

    var pie = d3.layout.pie()
      .value(function(d) {
        return d.value;
      })
      .sort(null);

    var arc = d3.svg.arc()
      .outerRadius(radius)
      .innerRadius(radius / 1.5);

    var max = d3.max(piedata, function(d) { return +d.value;} );

    var myChart = d3.select(chartId).append('svg')
      .attr('width', width)
      .attr('height', height)
      .append('g')
        .attr('transform', 'translate('+ (width / 2) +', '+ (height / 2) +')')
        .selectAll('path').data(pie(piedata))
        .enter().append('g')
          .attr('class', function(d, i) {
            var cssClass = 'slice';
            if (d.data.value === max) {
              cssClass += ' max';
            }
            return cssClass;
          });

    var gradient = d3.select(chartId + ' svg')
      .selectAll('linearGradient').data(gradients)
      .enter().append('linearGradient')
        .attr('id', function(d, i) {
          return gradients[i].id;
        });

    gradient.append('stop')
      .attr('offset', '0%')
      .attr('stop-color', function(d, i) {
        return gradients[i].start;
      });

    gradient.append('stop')
      .attr('offset', '100%')
      .attr('stop-color', function(d, i) {
        return gradients[i].end;
      });

    var slices = d3.selectAll(chartId + ' g.slice')
      .append('path')
        .attr('fill', function(d, i) {
          return 'url(#' + d.data.color + ')';
        })
        .attr('d', arc)
        .on('mouseover', function(d, i) {
          var gradient = gradients.filter(function( obj ) {
            return obj.id == d.data.color;
          });
          $(chartId + ' [data-slice]').css('opacity', 0.5);
          $(chartId + ' [data-slice=' + i + ']').css({
            'background': gradient[0].end,
            'opacity': 1
          });
        })
        .on('mouseout', function(d, i) {
          $(chartId + ' [data-slice]').css('opacity', 1);
          $(chartId + ' [data-slice=' + i + ']').css('background', 'rgba(0,0,0,0.2)');
        });

    var legend = d3.select(chartId)
      .attr('class', 'pie-chart')
      .append('ul')
        .attr('class', 'legend')
        .selectAll('li').data(pie(piedata))
        .enter().append('li')
          .attr('data-slice', function(d, i) {
            return i;
          })
          .attr('style', function(d, i) {
            var gradient = gradients.filter(function( obj ) {
              return obj.id == d.data.color;
            });
            return 'border-bottom: solid 3px ' + gradient[0].end;
          })
          .text(function(d, i) {
            return d.data.label + ': ';
          });

    legend.append('span')
      .text(function(d, i) {
      return d.data.value + '%';
    });

    var maxCirc = d3.select(chartId)
      .append('div')
      .attr('class', 'max-circ');

    maxCirc.append('span')
      .attr('class', 'label')
      .text(chartLabel);

    maxCirc.append('span')
      .attr('class', 'value')
      .attr('style', function() {
        var top = piedata.filter(function( obj ) {
          return obj.value == max;
        });
        var gradient = gradients.filter(function( obj ) {
          return obj.id == top[0].color;
        });
        return 'color: ' + gradient[0].end;
      })
      .text(function() {
        var top = piedata.filter(function( obj ) {
          return obj.value == max;
        });
        return top[0].label + ': ' + top[0].value + '%';
      });
  });
});
