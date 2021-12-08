#/bin/sh

rm /var/www/html/index.html
touch /var/www/html/index.html

echo "<html><head><title>Wohnzimmer Wetter</title></head><body>" >> /var/www/html/index.html

while read line
do
	metar=$( curl "https://tgftp.nws.noaa.gov/data/observations/metar/stations/$line.TXT" );
	echo "<b>$metar</b>" >> /var/www/html/index.html;
	echo "<pre>" >> /var/www/html/index.html;
	curl "https://tgftp.nws.noaa.gov/data/observations/metar/decoded/$line.TXT" >> /var/www/html/index.html
	echo "</pre>" >> /var/www/html/index.html;
	echo "<hr/>" >> /var/www/html/index.html;
	echo "<br/><br/>" >> /var/www/html/index.html;
done < stations.txt



echo "<h2>Webcam Ammersee Hersching</h2>" >> /var/www/html/index.html;
echo "<img src='https://www.addicted-sports.com/fileadmin/webcam/ammersee/current/600.jpg'/>" >> /var/www/html/index.html;

echo "<h2>Webcam Augsburg Innenstadt</h2>" >> /var/www/html/index.html;
echo "<img width='600' src='https://www.augsburg.de/fileadmin/user_upload/header/webcam/webcamdachspitz/B_Rathausplatz_Dachspitz_00.jpg?1638958203100'>/" >> /var/www/html/index.html;

#echo "<h2>Webcam Donauwoerth</h2>" >> /var/www/html/index.html;
#echo "<img width='600' src='https://flugplatz-genderkingen.de/cam/08/cam_west_current.jpg'/>" >> /var/www/html/index.html;
#echo "<img width='600' src='https://flugplatz-genderkingen.de/cam/08/cam_east_current.jpg'/>" >> /var/www/html/index.html;

echo "</body></html>" >> /var/www/html/index.html




