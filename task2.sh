while :
do
	wget -q http://www.accuweather.com/ru/by/minsk/28580/current-weather/28580
	grep -Po '(?<=<span class=\"temp\">)(.*?)(?=<span>)' 28580
	rm 28580
	source ./config.ini
	sleep $timeout
done