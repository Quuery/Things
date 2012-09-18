/**var App = Em.Application.create();

App.MyView = Em.View.extend({
  mouseDown: function() {
    window.alert("hello world!");
  }
});**/

$(document).ready(function() {
	// Inititlize Bootstrap Plugins
	$('a[rel=tooltip]').tooltip();
	$('#new').modal().modal('hide');
});
