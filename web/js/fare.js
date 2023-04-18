/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


//global map variable;
$(window).ready(function () {
initialize();
$('#calculateform .submitbtn').on({
    click: getPriceAndDistance
});    
});

function getPriceAndDistance(event) { 
event.preventDefault();

//validating Input
var state = 1;
var form = $('#calculateform');
var validateable = form.find('input');
validateable.each(function () {
    elem = $(this);
    $(elem).removeClass('invalid');
    if (elem.val().length < 2) {
        $(elem).addClass('invalid');
        state = 0;
    }
})

//doing the actual stuff
if(state == 1)
{
    var from = form.find('#from').val().trim().replace(/[^a-z0-9\s]/gi, '');
    var to = form.find('#to').val().trim().replace(/[^a-z0-9\s]/gi, '');
    var travelMode = form.find('#travelMode option:selected').val();
    var travelModeText = form.find('#travelMode option:selected').text();
    var price = Number(form.find('#travelMode option:selected').attr('price')).valueOf();

    var err = '';
    var locationFrom;
    var locationTo;


    $('#map-canvas').html('');                
    var mapOptions = {
        center: new google.maps.LatLng(55.378051, -3.43597299999999),
        zoom: 5,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("map-canvas"),
    mapOptions);

    $(form).find('p.msg').remove();
    $(form).find('p.loading').remove();
    loading = '<p class="loading">Loading Please Wait...<p>';
    $(form).append(loading);


    //initiate gecoder
    geocoder = new google.maps.Geocoder();

    if(geocoder)
    {


        geocoder.geocode({ 'address': from }, function (results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                locationFrom = results[0].geometry.location;
                if (locationFrom) 
                {
                    geocoder.geocode({ 'address': to }, function (results, status) {
                        if (status == google.maps.GeocoderStatus.OK) {

                            locationTo = results[0].geometry.location;
                            if (locationTo) {
                                updateMap();
                            }
                            else {
                                err = '<p class="invalid msg">Destination location is not found.<p>';
                                $(form).append(err);                        
                            }

                        }
                        else {
                            $(form).find('.loading').remove();
                            err = '<p class="invalid msg">Geocoding failed due to following reasons ' + status + '.<p>';
                            $(form).append(err);stance + "<br />";
                dvDistance.innerHTML += "Duration:" + duration;
                var dist=document.getElem
                        }
                    });

                }
                else{
                    err = '<p class="invalid msg">Starting location is not found.<p>';
                    $(form).append(err);                        
                }
            }
            else {
                //err = '<p class="invalid msg">Geocoding failed due to following reasons ' + status + '.<p>';
                err = '<p class="invalid msg">Sorry there seems to be some problem.<p>';
                errmsg = '<p class="invalid msg">Please check the location that you entered and try again.<p>';
                $(form).append(err);
                $(form).append(errmsg);
            }
        });




        function updateMap()
        {

            latlngCen = new google.maps.LatLng((locationFrom.lat()+locationTo.lat())/2,(locationFrom.lng()+locationTo.lng())/2);                
            map.panTo(latlngCen);
            map.setZoom(1);

            directionsService = new google.maps.DirectionsService();
            directionsDisplay = new google.maps.DirectionsRenderer();                
            directionsDisplay.setMap(map);

            var req = {
                origin:locationFrom,
                destination:locationTo
            }
            if (travelMode == 'driving')
            {
                req.travelMode = google.maps.DirectionsTravelMode.DRIVING;
            }
            else if (travelMode == 'transit')
            {
                req.travelMode = google.maps.DirectionsTravelMode.TRANSIT;
            }

            directionsService.route(req, function (response, status) {
                if (status == google.maps.DirectionsStatus.OK) {                        
                    directionsDisplay.setDirections(response);
                    if (response.routes[0].legs[0].distance) {
                        console.log('here');
                        var d = response.routes[0].legs[0].distance.value / 1609;

                        var estTotal = d * price;

                        $(form).find('.loading').remove();
                        dText = "The distance between <strong>" + from + "</strong> and <strong>" + to + "</strong> is <strong>" + d.toFixed(2) + " miles</strong>";
                        pText = "The estimated price via <strong>" + travelModeText + "</strong> is <strong>&#163; " + estTotal.toFixed(2) + "</strong>";
                        $(form).prepend('<p class="valid msg">' + pText + '.</p>');
                        $(form).prepend('<p class="valid msg">' + dText + '.</p>');

                        $('html, body').animate({
                            scrollTop: 240
                        }, 200);

                    }
                    else {
                        $(form).find('.loading').remove();
                        err = '<p class="invalid msg">Sorry there seems to be some problem. You can contact us <a href="contact.html">here</a>.</p>'
                        $(form).append(err);
                    }
                }
            });



        }

    }
}


};

function initialize() {
// declaring map variable;
var mapOptions = {
  center: new google.maps.LatLng(55.378051, -3.43597299999999),
  zoom: 5,
  mapTypeId: google.maps.MapTypeId.ROADMAP
};
var map;
map = new google.maps.Map(document.getElementById("map-canvas"),
    mapOptions);
};
