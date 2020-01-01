$(document).ready(function() {

	switch (menu) {
		case 'Home Page':
			$('#home').addClass('active');
			break;
		case 'About Us':
			$('#about').addClass('active');
			break;
		case 'All Products':
			$('#allproduct').addClass('active');
			break;
		case 'Contact Page':
			$('#contact').addClass('active');
			break;
		default:
			$('#allproduct').addClass('active');
			$('#a_'+menu).addClass('active');
		
			break;
	}

});