function loadPlaces(){
	console.log("Loading Places")
	//Define a Handlebar template for each city/town name
	var city_s = "{{place}}";
	var city_t = Handlebars.compile(city_s);
	// var venue_s = "<span class=\"venue\">{{venue}}</span>"
	var venue_s = "{{venue}}"
	var venue_t = Handlebars.compile(venue_s);

	//Let's just display unique cities and venues 
	uniquePlaces = [];
	uniqueVenues = [];

	//Go get data from the API 
	$.getJSON( "http://api.paulmay.org/checkins/2014-01-23/json/", function( data ) {

	$.each( data, function( key, val ) {
		if(uniquePlaces.indexOf(val.cit)==-1 && uniquePlaces.length<=7){
			uniquePlaces.push(val.cit);
			//Set the map to center on the loc of the first place. This is a little dull, as it'll show Oxford most of the time.
			if(uniquePlaces.length==1){
				setupMap(val.lat,val.lon);
			}
		}
		//Cap the number of venues to about 15
		if(uniqueVenues.indexOf(val.cat)==-1 && uniqueVenues.length <= 12){
			uniqueVenues.push(val.cat);
			// console.log(uniqueVenues);
		}
	});
	$.each(uniquePlaces, function(key,val) {
		src = city_t({place: val});
	    // console.log(src);
	    $("<span></span>").addClass("place").html(src).appendTo("#places");
	});

	$.each(uniqueVenues, function(key,val) {
		src = venue_t({venue: val});
	    // console.log(src);
	    $("<span></span>").addClass("venue").html(src).appendTo("#venues");
	});


	});

	// Create a Leaflet map and jam it into the map div. Use my Cloudmade API key. Map style is 22677.
	// Set the center of the map somewhere near one of the cities.
	
	function setupMap(_startLat,_startLon){
		var map = L.map('map',{zoomControl: false}).setView([_startLat,_startLon], 14);
		L.tileLayer('http://{s}.tile.cloudmade.com/95a8fbaf73f34961a101697886f8da04/22677/256/{z}/{x}/{y}.png', {
			attribution: 'OpenStreetMap',
			maxZoom: 18
		}).addTo(map);

		//Disable all the controls in the map. We don't need these. 
		map.dragging.disable();map.touchZoom.disable();map.doubleClickZoom.disable();map.scrollWheelZoom.disable();map.boxZoom.disable();map.keyboard.disable();
		}
}



function loadTweets(){
	console.log("Loading Tweets")
	var t_s   = "<div class=\"datetime\">{{c_a}}</div><div class=\"t\">{{t}}</div>";
	var t_t = Handlebars.compile(t_s);
	var c_s   = "<div class=\"datetime\">{{c_a}}</div><div>{{cat}}</div><div class=\"c\">{{cit}},{{cou}}</div>";
	var c_t = Handlebars.compile(c_s);

	$.getJSON( "http://api.paulmay.org/tweets/2014-01-2/json/", function( data ) {
	$.each( data, function( key, val ) {
		src = t_t({c_a: val.c_a, t:val.t});
	    // console.log(src);
	    $("<div></div>").addClass("tweet").addClass("light").html(src).appendTo("#tweets");
	});
	});

}

function getDistance(lat1, lon1, lat2, lon2) {
	// http://www.geodatasource.com/developers/javascript
	var radlat1 = Math.PI * lat1/180
	var radlat2 = Math.PI * lat2/180
	var radlon1 = Math.PI * lon1/180
	var radlon2 = Math.PI * lon2/180
	var theta = lon1-lon2
	var radtheta = Math.PI * theta/180
	var dist = Math.sin(radlat1) * Math.sin(radlat2) + Math.cos(radlat1) * Math.cos(radlat2) * Math.cos(radtheta);
	dist = Math.acos(dist)
	dist = dist * 180/Math.PI
	dist = dist * 60 * 1.1515
	dist = dist * 1.609344
	return dist
} 




