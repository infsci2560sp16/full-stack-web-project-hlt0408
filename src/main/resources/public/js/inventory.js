$(function() {
	$.ajax({
		url : "/api/inventory",
		type : "get",
		success : function(result) {
			var cars = JSON.parse(result);
			console.log(result);
			for ( var i = 0; i < cars.length; i++) {
				$("#inv").prepend(
						'<div class="row" id="' + cars[i].id + '">' +
							'<div class="col-md-7">' +
								'<a href="/item">' +
									'<img class="img-responsive img-hover" src="/img/inventory/' + cars[i].path + '" alt="car picture"> </a>' +
							'</div>' +
							'<div class="col-md-5">' +
								'<h3>' + cars[i].make + ' ' + cars[i].model + ' ' + cars[i].year + '</h3>' +
								'<h4>$' + cars[i].price + '</h4>' +
								'<h4>' + cars[i].bodytype + '</h4>' +
								'<a class="btn btn-primary" href="/item">View Details</a>' +
							'</div>' +
						'</div>' +
						'<hr>'
				);
			}
		}
	});
});

function browseByMake () {
	$.ajax({
		url : "/api/inventory/make/" + $( "#make" ).val(),
		type : "post",
		success : function(result) {
			$("#inv").html("");
			var cars = JSON.parse(result);
			console.log(result);
			for ( var i = 0; i < cars.length; i++) {
				$("#inv").prepend(
						'<div class="row" id="' + cars[i].id + '">' +
							'<div class="col-md-7">' +
								'<a href="/item">' +
									'<img class="img-responsive img-hover" src="/img/inventory/' + cars[i].path + '" alt="car picture"> </a>' +
							'</div>' +
							'<div class="col-md-5">' +
								'<h3>' + cars[i].make + ' ' + cars[i].model + ' ' + cars[i].year + '</h3>' +
								'<h4>$' + cars[i].price + '</h4>' +
								'<h4>' + cars[i].bodytype + '</h4>' +
								'<a class="btn btn-primary" href="/item">View Details</a>' +
							'</div>' +
						'</div>' +
						'<hr>'
				);
			}
		}
	});
}