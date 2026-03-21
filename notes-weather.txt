
Mid Central: (HNX)

https://forecast.weather.gov/MapClick.php?textField1=37.35&textField2=-120.61

XML: https://forecast.weather.gov/MapClick.php?lat=37.35&lon=-120.61&unit=0&lg=english&FcstType=dwml

New JSON-LD API: Office https://api.weather.gov/offices/HNX

Merced County Zone: https://api.weather.gov/zones/county/CAC047

GridPoint Forcast: https://api.weather.gov/gridpoints/HNX/28,132/forecast

Weather using points: https://api.weather.gov/points/37.35,-120.61

Example retrieving a JSON-LD or old Weather DWML (discussion weather markup language):

~~~shell
curl -X GET "https://api.weather.gov/gridpoints/HNX/28,132/forecast" -H "accept: application/ld+json"
curl -X GET "https://api.weather.gov/gridpoints/HNX/28,132/forecast" -H "accept: "application/vnd.noaa.dwml+xml
~~~

SoCal North: (LOX)

https://forecast.weather.gov/MapClick.php?lat=34.446210000000065&lon=-118.53484999999995

XML: https://forecast.weather.gov/MapClick.php?lat=34.4462&lon=-118.5349&unit=0&lg=english&FcstType=dwml

Santa Clarita Valley, Zone: https://api.weather.gov/zones/forecast/CAZ088

Saugus weather station: https://api.weather.gov/stations/SAUC1

GridPoint Forecast: https://api.weather.gov/gridpoints/LOX/148,64/forecast
Weather using points: https://api.weather.gov/points/34.4462,-118.5349


