#!/bin/bash
for svr in {1..100}
do
    echo "----------- Siemens $svr -----------" 
    ssh siemens$svr sudo apt-get update && sudo apt-get install -y ansible
done
