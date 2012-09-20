requirejs.config({
  baseUrl: "http://localhost/things/js/",
  paths: {
      jquery: ['http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min', 'libs/jquery-1.7.2.min'],
      Handlebars: 'libs/handlebars-1.0.0.beta.6',
      Ember: 'libs/ember-1.0.pre.min',
      'jquery.bootstrap': 'libs/bootstrap.min',
      'jquery.ui': 'libs/jquery-ui-1.8.23.custom.min'
  },
  shim: {
    'jquery': {
        exports: "$"
    },
    'Handlebars': {
        deps: ['jquery'],
        exports: "Handlebars"
    },
    'Ember': {
        deps: ['jquery', 'Handlebars'],
        exports: "Em"
    },
    'jquery.bootstrap': {
        deps: ['jquery'],
        exports: 'jquery'
    },
    'jquery.ui': {
        deps: ['jquery'],
        exports: 'jquery'
    }
  }
})

require ['jquery', 'app', 'jquery.bootstrap', 'jquery.ui', 'Handlebars', 'Ember'], ($, App) ->
   $ ->
   	App.init()