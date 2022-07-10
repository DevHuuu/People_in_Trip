$(document).ready(function() { 
	$(".submenuitem").hide()
    $("div.menuitem").bind('click', function () {
    	if ($(this).next().css('display') == 'none') {
        	$('.submenuitem').slideUp();
		}
        $(this).next().slideDown()
	})
}) 