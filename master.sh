#!/bin/bash

#master script to run RockU

#python3 flaskblog.py

parallel -u ::: 'python3 flaskblog.py 1' './test_me.sh 2'
