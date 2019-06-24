# Copyright 2019 Atelier Disko. All rights reserved.
#
# Base this container of the latest dsk container
#
#
FROM 960057802448.dkr.ecr.eu-central-1.amazonaws.com/dsk:latest 

EXPOSE 8080

COPY docs /ddt

CMD /dsk -lang $DDT_LANG -host 0.0.0.0 -port 8080 /ddt

