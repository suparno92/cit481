lastDot = $('#trigger');

lastDot.bind("animationend webkitAnimationEnd oAnimationEnd MSAnimationEnd", function(e){
  e.preventDefault;

  if($("#container").hasClass("bounce")) {
    //Loop Bounce Animation

       setTimeout(function() {
         $("#container").removeClass("bounce");
         $('#container').removeClass("condense");
         //Trigger Reflow
         $('#container').outerWidth() == $('#container').outerWidth();
       }, 2200);

       setTimeout(function() {
         $("#container").addClass("bounce");
         $('#container').removeClass("condense");
       }, 2200);

  }
  else if( $("#container").hasClass("condense") ) {
    //Loop Condense Animation

       setTimeout(function() {
         $("#container").removeClass("condense");
         $('#container').removeClass("bounce");

         //Trigger Reflow
         $('#container').outerWidth() == $('#container').outerWidth();
       }, 70);

       setTimeout(function() {
         $("#container").addClass("condense");
         $('#container').removeClass("bounce");
       }, 72);
  }
  else {

  }
});

//Button Scripts
$( ".bounce-btn" ).click(function() {
  $("#container").removeClass("slide");
  $("#container").removeClass("condense");
  $("#container").addClass("bounce");
  $(".bounce-btn").addClass("clicked");
  $(".slide-btn").removeClass("clicked");
  $(".condense-btn").removeClass("clicked");
});

$( ".slide-btn" ).click(function() {
  $("#container").removeClass("bounce");
  $("#container").removeClass("condense");
  $("#container").addClass("slide");
  $(".slide-btn").addClass("clicked");
  $(".bounce-btn").removeClass("clicked");
  $(".condense-btn").removeClass("clicked");
});

$( ".condense-btn" ).click(function() {
  $("#container").removeClass("bounce");
  $("#container").removeClass("slide");
  $("#container").addClass("condense");
  $(".condense-btn").addClass("clicked");
  $(".bounce-btn").removeClass("clicked");
  $(".slide-btn").removeClass("clicked");
});
