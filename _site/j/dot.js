// Distance Over Time
var DOT = DOT || {};

DOT.clickythings = {
numbers: function(){
	$('img.number').on('click',function(){
		// $(this).parent().css("width","500");
		$(this).parent().css("max-width",340);
		$(this).parent().find("ul.race-data").toggle();
	});
}
};

//Kick off this whole show
DOT.clickythings.numbers();