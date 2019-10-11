#!/bin/bash

#cd /home/metamap/public_mm
./bin/skrmedpostctl start 
./bin/wsdserverctl start 
echo "plase wait 110 seconds"
sleep 110 
./bin/mmserver16



