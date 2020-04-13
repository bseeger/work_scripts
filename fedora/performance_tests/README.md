# Basic scripts to test performance of Fedora

## testPUTandHEAD.sh

This script will send a configurable amount of PUTs to fedora, while at the same time
sending HEAD requests as well.  

Very basic bash script to see if Fedora will fail under basic load.  It is not a 
polished script by any means, but a quick way to see if something might fail under
small load. 

This first script will start a second script in the background: runHead.sh. 
runHead will likely run longer then the first script, so keep that in mind when you configure
the number of requests, since it will chug away for much longer in the background. 

image1.png borrowed from: https://ccsearch.creativecommons.org/photos/6ea4c3bf-b9aa-4bb1-b7b6-466de0d229ad
