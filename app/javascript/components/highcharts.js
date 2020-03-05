const Highcharts = require('highcharts');
// Load module after Highcharts is loaded
require('highcharts/modules/exporting')(Highcharts);

const container = document.querySelector('#container');

import highchartsMore from "highcharts/highcharts-more.js";
import solidGauge from "highcharts/modules/solid-gauge.js";

function renderIcons() {

    // Move icon
    if (!this.series[0].icon) {
        this.series[0].icon = this.renderer.path(['M', -8, 0, 'L', 8, 0, 'M', 0, -8, 'L', 8, 0, 0, 8])
            .attr({
                stroke: 'transparent',
                'stroke-linecap': 'round',
                'stroke-linejoin': 'round',
                'stroke-width': 2,
                zIndex: 10
            })
            .add(this.series[2].group);
    }
    this.series[0].icon.translate(
        this.chartWidth / 2 - 10,
        this.plotHeight / 2 - this.series[0].points[0].shapeArgs.innerR -
            (this.series[0].points[0].shapeArgs.r - this.series[0].points[0].shapeArgs.innerR) / 2
    );

    // Exercise icon
    if (!this.series[1].icon) {
        this.series[1].icon = this.renderer.path(
            ['M', -8, 0, 'L', 8, 0, 'M', 0, -8, 'L', 8, 0, 0, 8,
                'M', 8, -8, 'L', 16, 0, 8, 8]
        )
            .attr({
                stroke: 'transparent',
                'stroke-linecap': 'round',
                'stroke-linejoin': 'round',
                'stroke-width': 2,
                zIndex: 10
            })
            .add(this.series[2].group);
    }
    this.series[1].icon.translate(
        this.chartWidth / 2 - 10,
        this.plotHeight / 2 - this.series[1].points[0].shapeArgs.innerR -
            (this.series[1].points[0].shapeArgs.r - this.series[1].points[0].shapeArgs.innerR) / 2
    );

    // Stand icon
    if (!this.series[2].icon) {
        this.series[2].icon = this.renderer.path(['M', 0, 8, 'L', 0, -8, 'M', -8, 0, 'L', 0, -8, 8, 0])
            .attr({
                stroke: 'transparent',
                'stroke-linecap': 'round',
                'stroke-linejoin': 'round',
                'stroke-width': 2,
                zIndex: 10
            })
            .add(this.series[2].group);
    }

    this.series[2].icon.translate(
        this.chartWidth / 2 - 10,
        this.plotHeight / 2 - this.series[2].points[0].shapeArgs.innerR -
            (this.series[2].points[0].shapeArgs.r - this.series[2].points[0].shapeArgs.innerR) / 2
    );
}

const constructCircle = (name, color, category) => {
  const serie = {
        name: name,
        data: [{
            color: color,
            y: parseInt(category)
        }]
    }

  const background = {
        backgroundColor: Highcharts.color(color)
            .setOpacity(0.3)
            .get(),
        borderWidth: 0
    }

  return { serie: serie, background: background }
}

let gradetotal;

if(parseInt(container.dataset.gradetotal) < 101) {
  gradetotal = parseInt(container.dataset.gradetotal);
} else {
  gradetotal = 100;
}

let readingtotal;

if(parseInt(container.dataset.readingtotal) < 101) {
  readingtotal = parseInt(container.dataset.readingtotal);
} else {
  readingtotal = 100;
}

let choretotal;

if(parseInt(container.dataset.choretotal) < 101) {
  choretotal = parseInt(container.dataset.choretotal);
} else {
  choretotal = 100;
}


const frontCircles = () => {
  const series = [];
  const backgrounds = [];
  if (parseInt(container.dataset.gradepercent) > 0) {
    const circle0 = constructCircle("Grade", Highcharts.getOptions().colors[2], gradetotal);
    series.push(circle0.serie)
    backgrounds.push(circle0.background)
  }

  if (parseInt(container.dataset.readingpercent) > 0) {
    const circle1 = constructCircle("Reading", Highcharts.getOptions().colors[1], readingtotal);
    series.push(circle1.serie)
    backgrounds.push(circle1.background)
  }

  if (parseInt(container.dataset.chorepercent) > 0) {
    const circle2 = constructCircle("Chore", Highcharts.getOptions().colors[0], choretotal);
    series.push(circle2.serie)
    backgrounds.push(circle2.background)
  }

  let i = 0

  // console.dir(backgrounds);

  series.forEach((serie) => {
    serie.data[0].radius = `${ 38 + 25 * (i + 1) - 1 }%`;
    serie.data[0].innerRadius = `${ 38 + 25 * i }%`;
    backgrounds[i].outerRadius = `${ 38 + 25 * (i + 1) - 1 }%`;
    backgrounds[i].innerRadius = `${ 38 + 25 * i }%`;
    i ++
  });
  // console.dir(series);
  // const series = [ chore, reading, grade ]
  return {series: series, backgrounds: backgrounds}
}


const spinning = () => {
    const circles = frontCircles();
    // console.dir(circles);
    Highcharts.chart('container', {

    chart: {
        type: 'solidgauge',
        height: '110%',
        events: {
            render: renderIcons
        }
    },

    title: {
        text: 'Activity',
        style: {
            fontSize: '24px'
        }
    },

    tooltip: {
        borderWidth: 0,
        backgroundColor: 'none',
        shadow: false,
        style: {
            fontSize: '14px'
        },
        valueSuffix: '%',
        pointFormat: '{series.name}<br><span style="font-size:1.9em; color: {point.color}; font-weight: bold">{point.y}</span>',
        positioner: function (labelWidth) {
            return {
                x: (this.chart.chartWidth - labelWidth) / 2,
                y: (this.chart.plotHeight / 2) + 15
            };
        }
    },

    pane: {
        startAngle: 0,
        endAngle: 360,
        background: circles.backgrounds
    },

    yAxis: {
        min: 0,
        max: 100,
        lineWidth: 0,
        tickPositions: []
    },

    plotOptions: {
        solidgauge: {
            dataLabels: {
                enabled: false
            },
            linecap: 'round',
            stickyTracking: false,
            rounded: true
        }
    },

    series: circles.series
})};


const myCharts = () => {
  highchartsMore(Highcharts);
  solidGauge(Highcharts);

  if (!Highcharts.theme) {
      Highcharts.setOptions({
          chart: {
              backgroundColor: 'transparent'
          },
          colors: ['#F19259', '#77CFDB', '#B7E6FE'],
          title: {
              style: {
                  color: 'transparent'
              }
          },
          tooltip: {
              style: {
                  color: '$light-grey'
              }
          }
      });
  }

  spinning();
  const divHamburger = document.querySelector(".highcharts-button-box");
  const hamburger = document.querySelector(".highcharts-button-symbol");
  const credits = document.querySelector(".highcharts-credits");

  divHamburger.classList.add("display-none");
  hamburger.classList.add("display-none");
  credits.classList.add("display-none");
}

export { myCharts };
