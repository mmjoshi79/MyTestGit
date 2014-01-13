<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyMap.aspx.cs" Inherits="MyMap" %>

<!DOCTYPE html>

<html>
<head>
<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyD-Dw9BaIX9ATKWhEeqq6zRiWDmaveaIY8&sensor=false">
</script>

<script>
    function initialize() {
        var mapProp = {
            center: new google.maps.LatLng(51.508742, -0.120850),
            zoom: 5,
            mapTypeId: google.maps.MapTypeId.HYBRID
        };
        var map = new google.maps.Map(document.getElementById("googleMap")
          , mapProp);
        var map1 = new google.maps.Map(document.getElementById("googleMap1")
  , mapProp);

        
        var mapProp2 = {
            center: new google.maps.LatLng(18.490171, 73.788983),
            zoom: 5,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map2 = new google.maps.Map(document.getElementById("googleMap2")
 , mapProp2);

     


        //var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
        var x = new google.maps.LatLng(52.395715, 4.888916);
        var stavanger = new google.maps.LatLng(58.983991, 5.734863);
        var amsterdam = new google.maps.LatLng(52.395715, 4.888916);
        var london = new google.maps.LatLng(51.508742, -0.120850);

        var myTrip = [stavanger, amsterdam, london];
        var flightPath = new google.maps.Polyline({
            path: myTrip,
            strokeColor: "#FF00FF",
            strokeOpacity: 0.8,
            strokeWeight: 2
        });

        flightPath.setMap(map1);

      
        
        var pune = new google.maps.LatLng(18.490171, 73.788983);
        var myCity = new google.maps.Circle({
            center: pune,
            radius: 200,
            strokeColor: "#0000FF",
            strokeOpacity: 0.6,
            strokeWeight: 4,
            fillColor: "#0000FF",
            fillOpacity: 0.4
        });

        myCity.setMap(map2);

        //marker = new google.maps.marker({
        //position: new google.maps.LatLng(18.490171, 73.788983),
        //    animation: google.maps.animation.bounce
        //});

        //marker.setmap(map2);

        var marker = new google.maps.Marker({
            position: map2.getCenter(),
            map: map2,
            animation:google.maps.Animation.BOUNCE,
            optimized: false,
            zIndex: 5
        })

        //google.maps.event.addListener(map2, 'center_changed', function () {
        //    window.setTimeout(function () {
        //        showModalDialog("Test", map2);
        //        map.panTo(marker.getPosition());
        //    }, 3000);
        //});

    }

    google.maps.event.addDomListener(window, 'load', initialize);
</script>
</head>

<body>
    <div id="googleMap" style="width: 500px; height: 250px;"></div>
    <div id="googleMap1" style="width: 500px; height: 250px;"></div>
    <div id="googleMap2" style="width: 500px; height: 250px;"></div>
</body>
</html>
