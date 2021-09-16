$(document).ready(function () {

  //Sic/Correction clicking function
  $(".sic").on("click", function () {
    if ($(this).next(".correction").hasClass("d-none")) {
      $(this).next(".correction").slideToggle("slow").removeClass("d-none");
    } else {
      $(this).next(".correction").slideToggle("slow").addClass("d-none");
    }
  });

  // Back to top button ----------------------------------------------------------
  $(window).scroll(function() {
    if ($(this).scrollTop() > 100) {
      $('#back-to-top').fadeIn("fast");
    } else {
      $('#back-to-top').fadeOut("fast");
    }
  });
  $('#back-to-top').click(function() {
    $("html, body").animate({
      scrollTop: 0
    }, 400);
    return false;
  });

  // Show all and hide all
  $(".toggle-cypher-button").on("click", function () {

    // if anything with class of "decypher" is invisible...
    if ($(".decypher").hasClass("d-none")) {
      // show all the things with class of decypher
      $(".decypher").removeClass("d-none").css("display", "inline");
      // change the text in the button to hide all
      $("#toggle-cypher-button").text("hide all");
    } else {
      // Hide all the things with class of decypher
      $(".decypher").addClass("d-none").css("display", "none");
      // change the text in the button to hide all
      $("#toggle-cypher-button").text("decode all");
    }

  });


  // CLicking on individual cypher classes
  $(".cypher").on("click", function () {

    if ($(this).next().hasClass("d-none")) {
      $(this).next().fadeIn(800).removeClass("d-none").css("display", "inline");
    } else {
      $(this).next().fadeOut(500).addClass("d-none").css("display", "none");
    }

  });

  // Set options for popovers per page with javascript objects
  //$('[data-toggle="popover"]').popover({
  //  'container': 'body',
  //  "animation": true,
  //  "html": true,
  //  "placement": 'top',
  //});

  // Use this to allow popover to dismiss on clicking any element
  //$('.popover-dismiss').popover({
  //  "trigger": 'focus'
  //});


  // The footnote happen here -- writeIt takes the data-footnote content from anything with class footnote_btn and, upon clicking, removes the d-none class. The .footnote-close function gives the d-none class back.
  var writeIt = "";

  $(".footnote_btn").on("click", function () {

    writeIt = $(this).data("footnote");
    // $("#footnote-card").html(writeIt);

    $(writeIt).removeClass("d-none");

  });

  $(".footnote-close").on("click", function () {
    $(this).parent().addClass("d-none");
  });

  $('.navbar a').on('click', function (e) {
    if (this.hash !== '') {
      e.preventDefault();

      const hash = this.hash;

      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 800);
    }
  });






});


// document ready