$(document).ready(function(){

	$("#basename").on("input",function(){
		if (this.value==0) { $("figure figcaption").hide() }
		else { $("figure figcaption").show() }
	});


	$("#size").on("input",function(){
		$("figure svg").css("width",this.value+"px"),
		$("figure svg").css("height",this.value+"px")
	});


	$("#stroke").on("input",function(){
		$("figure svg").css("stroke-width",this.value+"px")
	});


});