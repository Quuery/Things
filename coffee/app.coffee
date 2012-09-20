###
 * Main file to start application
 *
 * @package application
 * @author Daniel Leitner, <daleitner@me.com>
###

define () ->
  class Application


    ### 
     * Is loading spinner visible
     * 
     * @var boolean
     * @access private
    ###
    _isLoading = -> false

    ### 
     * Are all ui components ready to use
     * 
     * @var boolean
     * @access private
    ###
    _uiReady = -> false

    ### 
     * Test for modernizr
     * 
     * @var array
     * @access private
    ###
    _modernizrTestCases = -> ['localstorage']

    ### 
     * Test results of modernizr tests
     *
     * @var array
     * @access private
    ### 
    _modernizrTestResults = -> [{
      'testCase': 'localstorage',
      'passed': true
    }]

    ### 
     * Application object
     *
     * @var Object<Ember>
     * @access private
    ### 
    _app = -> Em.Application.create()

    ### 
     * Application verison
     *
     * @var float
     * @access private
    ### 
    _VERSION = -> 0.1

    ### 
     * Application name
     *
     * @var string
     * @access private
    ### 
    _NAME = -> ''

    ### 
     * Application env
     *
     * @var string
     * @access private
    ### 
    _ENV = -> 'development'

    ### 
     * Init application and all required components
     *
     * @access public
    ### 
    init: ->
      # Setup env
      _env()

      # Start Application
      _initLoadingScreen()

      # Hide loading screen, app is ready
      _hideLoadingScreen()
    
    ### 
     * Run Modernizr tests
     *
     * @access private
     * @return boolean
    ###  
    _initModernizr = ->
      true

    ### 
     * Init Ember object
     *
     * @access private
    ###  
    _initEmber = ->
      true
    
    ### 
     * Init loading screen
     *
     * @access private
    ###   
    _initLoadingScreen = ->
      _isLoading = true

      # Create loading overlay
      $('#loading').modal({
        show: true
      })

    ### 
     * Hide loading screen
     *
     * @access private
    ### 
    _hideLoadingScreen = ->
      if _isLoading and _uiReady
        $('#loading').modal('hide')
        _isLoading = false

    ### 
     * Hide loading screen
     *
     * @access private
    ### 
    _env = ->
      if _ENV is 'development'
        _envDevelopment()
      else
        _envProduction()

    ### 
     * Will be called, if _ENV is set to development. 
     * Enable debug.
     *
     * @access private
    ### 
    _envDevelopment = ->
      # Start debugging

    ### 
     * Will be called, if _ENV is set to production. 
     * Disable debug and activate cache.
     *
     * @access private
    ### 
    _envProduction = ->
      # Set debug level to 0

    ### 
     * Init all ui components (jQueryUI, Bootstrap)
     *
     * @access private
    ### 
    _initUI = ->
      $('a[rel=tooltip]').tooltip()
      $('#new').modal()
      $(".container").sortable({
        handle: '.drag-handle',
        placeholder: 'hero-unit',     
        update: (event, ui) ->
      })
      $( ".container" ).disableSelection();

      _uiReady = true 

  
  new Application()