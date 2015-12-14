$(function(){
	function initialize() {
	  var mapProp = {
		center:new google.maps.LatLng(10.7665966,106.6689995),
		zoom:17,
		mapTypeId:google.maps.MapTypeId.ROADMAP
	  };
	  var map=new google.maps.Map(document.getElementById("googleMap"), mapProp);
	}
	google.maps.event.addDomListener(window, 'load', initialize);
})