// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready(function(){

  var tour = new Tour({
    steps: [
    {
      element: "#t1",
      title: "Hey you!",
      content: "Want a tour of this site?"
    },
    {
      element: "#t2",
      title: "Add pictures",
      content: "Eventually you'll be able to add pictures."
    },
    {
      element: "#t3",
      title: "Make a post",
      content: "Write stuff then post it."
    }
  ]});

  // Initialize the tour
  tour.init(true);

  // Start the tour
  tour.start(true);

});
