docker-ptoceti
==============

Docker source script to build an image for the Ptoceti project

Target is the Raspberry'Pi board

docker run -d -p 8080:8080 -p 8081:8081 -v /var/felix:/var/felix lathil/rpi-docker-ptoceti