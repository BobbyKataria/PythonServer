#!/bin/bash

sudo useradd --create-home pythonadm
sudo usermod --shell /bin/python pythonadm


#copying the html and python file to pythonadm

sudo cp ./app.py /home/pythonadm | sudo cp ./index.html /home/pythonadm

#copying the service file to the pythonadm user

sudo cp ./python.service /etc/systemd/system

#boot 

sudo systemctl daemon-reload

sudo systemctl start python


