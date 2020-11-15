#!/bin/bash
for svr in {1..10}
do
    echo "----------- Siemens $svr -----------" 
    ssh siemens$svr sudo apt-get update && sudo apt-get install -y ansible
done
