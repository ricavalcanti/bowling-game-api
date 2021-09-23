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

## Resources

Base url: `/api/v1`

### Game

| URL           | Method | Body    | Description                                  |
| ------------- | ------ | ------- | -------------------------------------------- |
| `/games`      | GET    | `empty` | Get all games and their respective Frames id |
| `/games/{id}` | GET    | `empty` | Get a game with the given id                 |
| `/games`      | POST   | `empty` | Create a new game and start the first Frame  |
| `/games/{id}` | DELETE | `empty` | Delete a Game with the given id              |

### Throw

| URL       | Method | Body                                                | Description                                                  |
| --------- | ------ | --------------------------------------------------- | ------------------------------------------------------------ |
| `/throws` | POST   | `{"throw": {"knocked_pins": 5}, "game": {"id": 1}}` | Create a new Throw, if possible, in the last frame of a Game |

:warning: **The following endpoints are not necessary for the basic bowlling game flow, so they are not fully implemented.**

### Throw (not fully implemented)

| URL            | Method | Body                             | Description                      |
| -------------- | ------ | -------------------------------- | -------------------------------- |
| `/throws`      | GET    | `empty`                          | Get all Throws                   |
| `/throws/{id}` | PATCH  | `{"throw": {"knocked_pins": 5}}` | Update a Throw with the given id |
| `/throws/{id}` | DELETE | `empty`                          | Delete a Throw with the given id |



