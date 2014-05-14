$( document ).ready(function() {
	alert("Hello! Map page is loading!!");
    var defaultLatLng = new google.maps.LatLng(34.0983425, -118.3267434);  // Default to Hollywood, CA when no geolocation support
    if ( navigator.geolocation ) {
        function success(pos) {
            // Location found, show map with these coordinates
            drawMap(new google.maps.LatLng(pos.coords.latitude, pos.coords.longitude));
        }
        function fail(error) {
            drawMap(defaultLatLng);  // Failed to find location, show default map
        }
        // Find the users current position.  Cache the location for 5 minutes, timeout after 6 seconds
        navigator.geolocation.getCurrentPosition(success, fail, {maximumAge: 500000, enableHighAccuracy:true, timeout: 6000});
    } else {
        drawMap(defaultLatLng);  // No geolocation support, show default map
    }
    
    function drawMap(latlng) {
        var myOptions = {
            zoom: 13,
            center: latlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            disableDefaultUI: true,
            mapTypeControl: true,
			scaleControl: true,
			streetViewControl: true,
			overviewMapControl: true
        };
        var map = new google.maps.Map(document.getElementById("map-canvas"), myOptions);
        // Add an overlay to the map of current lat/lng
        var marker = new google.maps.Marker({
            position: latlng,
            animation: google.maps.Animation.BOUNCE,
            map: map,
            icon: "/assets/robbery.png",
      
        });
        
      var locationArray = [["test testtesttesttest", 41.873503, -87.633032],["test2 testtesttesttesttest", 41.858482, -87.625307],["test3 testtesttesttesttest", 41.886412, -87.615265]]  
      
      console.log(locationArray)
      
      locationArray.map( function(item) {
		  var contentString = item[0];
	
		  var infowindow = new google.maps.InfoWindow({
		      content: contentString,
		      maxWidth: 250,
		      minWidth: 250,
		      maxHeight: 150,
		      minHeight: 100,
		  });
	        
	      var myLatlng = new google.maps.LatLng(item[1],item[2]);
	
		  // To add the marker to the map, use the 'map' property
		  var marker2 = new google.maps.Marker({
		      position: myLatlng,
		      map: map,
		  });
		
		  google.maps.event.addListener(marker2, 'click', function() {
		    infowindow.open(map,marker2);
		  });  
	 	  
	  })
        
	}  
	  
});