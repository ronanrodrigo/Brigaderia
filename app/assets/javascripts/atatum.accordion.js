var AtatumAccordion = {
  initialize: function() {
    console.log(1);
    $(".simple_product").live("mouseenter", function(){
      $(".simple_product").unbind("mouseenter")
      AtatumAccordion.resizes($(this));
    });
  },
  
  resizes: function(e) {
    $(".simple_product").width("10%")
    e.animate({
      width: "50%"
    }, 500, function(){
      $(".simple_product").live("mouseenter", function(){
        AtatumAccordion.resizes($(this));
      });
    })
  }
};