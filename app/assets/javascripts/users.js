// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/
// $(document).ready(function(){
$(document).ready(function() {
  $('#info_circle').click(function (event) {
    tourStart();
    event.preventDefault(); // Prevent link from following its href
  });
});
