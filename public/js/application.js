$(document).ready(function() {
  $(document).on('keyup', function(event) {

    // Detect which key was pressed and call the appropriate function
    // keyCode == 105
    // keyCode == 81
    // Google "jquery keyup what key was pressed" if you don't know how
    if(event.keyCode == 81) {
      $("#player1_strip td.active").removeClass('active').next().addClass('active');


        if($("#player1_strip td:last").hasClass('active')) {
          $("#player1_strip td.active").removeClass('active').last().css("background-color", "red");
          alert("Player 1 wins");
        }
    }



    if(event.keyCode == 105) {
      $("#player2_strip td.active").removeClass('active').next().addClass('active');

      if($("#player2_strip td:last").hasClass('active')) {
          $("#player2_strip td.active").removeClass('active').last().css("background-color", "red");
          alert("Player 2 wins");
      }
    }



  });
});