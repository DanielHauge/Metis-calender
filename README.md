# Metis-conky

## Pre-requisites:
### Calender
- Ruby installed: ```sudo pacman -S ruby```  or follow instructions: [Here](https://www.ruby-lang.org/en/documentation/installation/)
- Google Api Gem fetched: ```gem install google-api-client```
- Get Google Crendetials.json: [Here](https://developers.google.com/calendar/quickstart/ruby)

## Installation:
- ```git clone git@github.com:DanielHauge/Metis-conky.git```
- ```sudo cp ./Metis-conky/* ~/.Conky```
- Run calender.rb once to initialize authentication ```~/.Conky/calender.rb``` and follow instructions.
- Edit viewnotes & sync scripts with correct api keys 
- run startconky script on startup
