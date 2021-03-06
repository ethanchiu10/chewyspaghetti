#######################################################
#
# MAIN
#
#######################################################


#######################################################
# Require
#######################################################
window.$ = require 'jquery'
window._ = require 'underscore'

require 'angular'
require 'angular-route'
require 'angular-animate'
require 'angular-touch'
require 'angular-swipe/src/angular-swipe'


#######################################################
# Setup
#######################################################
app = angular.module('app', ['ngRoute', 'ngAnimate', 'ngTouch', 'swipe'])

app.factory       'RendererService',      require('./services/RendererService')
app.factory       'LineService',          require('./services/LineService')
app.factory       'HistoryService',       require('./services/HistoryService')
app.factory       'ColorService',         require('./services/ColorService')
app.factory       'DataService',          require('./services/DataService')

app.directive     'blast',                require('./directives/Blast')

app.controller    'AppCtrl',              require('./controllers/AppCtrl')
app.controller    'IntroCtrl',            require('./controllers/IntroCtrl')
app.controller    'WorksCtrl',            require('./controllers/WorksCtrl')
app.controller    'ProjectCtrl',          require('./controllers/ProjectCtrl')

app.config require('./config/RouteProvider')


