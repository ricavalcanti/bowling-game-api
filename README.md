# Description

This is an API for a Bowling Game.

## Database Model

[Bowling Game Model.pdf](https://github.com/ricavalcanti/bowling-game-api/files/7218024/Bowling.Game.-.Diagrama.ER.de.banco.de.dados.pe.de.galinha.1.pdf)

## Postman Collection
Import this [file](https://github.com/ricavalcanti/bowling-game-api/blob/master/bowling-api.postman_collection.json) on Postman, run server and run the requests.

## Requirements:

* Ruby version: `2.7.0`
* Rails version: `6.1.4`
* Database: `sqlite3 v.1.4`

## Setup locally
- run `sudo apt-get install sqlite3` to install sqlite3
- run `sudo gem install bundler` to install bundler
- run `cd bowling-game-api`
- run `bundle install`
- run `rails db:prepare`
- run `rails s`
