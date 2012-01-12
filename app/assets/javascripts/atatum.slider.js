var AtatumSlider = {
	
	initialize: function(){
		$(".brigadeiro").first().show();		
		$(".arrow").click(function(){
			var to_show = $(".brigadeiro:visible").first();
			to_show.hide("slow");
			if(to_show.next(".brigadeiro").length == 0)
				to_show = $(".brigadeiro").first();
			else
				to_show = to_show.next();
			to_show.show("slow");
		});
	}
}