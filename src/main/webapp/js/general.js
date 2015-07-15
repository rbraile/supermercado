(function($) {
    $(document).ready(function() {
    	if($(".descuento")) {
    		if(Number($(".productos-total").text()) > 0) {
    			$(".descuento").removeClass("hide");
    		} else {
    			$(".descuento").addClass("hide");
    		}
    	}
    	
    	$("input[type=number], input[type=text]").change(function() {
    		console.log("sdfsdf");
			if($("input[type=number]").val() != "" && $("input[type=text]").val() != "") {
				$("#acceptButton").removeAttr("disabled");    			
			} else {
				$("#acceptButton").attr("disabled");
			}
    	});

    });    	
})(jQuery);