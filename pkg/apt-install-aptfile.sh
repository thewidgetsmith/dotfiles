#!/bin/sh


sed 's/#.*//' $ZSH/AptFile | xargs sudo apt-get install --yes
