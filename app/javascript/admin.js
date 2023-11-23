import "./admin/jquery"
import "@hotwired/turbo-rails"
Turbo.session.drive = false
import "./controllers"
import "./admin/bootstrap/js/bootstrap.bundle.min"
import "./admin/jquery-easing/jquery.easing.min"
import "./admin/main.min"

// import "./admin/chart.js/Chart.min"
import Chart from 'chart.js/auto';
// global.Chart = Chart;

import "./admin/demo/chart-area-demo"
import "./admin/demo/chart-pie-demo"