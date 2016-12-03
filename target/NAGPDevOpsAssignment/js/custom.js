$(document).ready(function() {

	$("#foodRecipeForm").validate({
		rules : {
			foodName : "required",
			foodCuisine : "required",
			foodDescription : "required",
			foodBestPlace : "required",
			foodImage : "required"
		},
		messages : {
			foodName : "Please enter Recipe Name.",
			foodCuisine : "Please enter Recipe Cuisine.",
			foodDescription : "Please enter Recipe Description.",
			foodBestPlace : "Please enter the best place in Delhi for this dish.",
			foodImage : "Please upload an image for this Recipe."
		},
		submitHandler : function(form) {
			form.submit();
		}
	});

});