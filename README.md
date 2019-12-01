# README

## Dependencies

* Rails 6.0.1
* Webpacker
* jQuery
* Bootstrap 4
* yarn

## Setup

* `git clone git@github.com:asharmubasir/action_cable_test.git`
* run `bundle install`
* run `yarn install --check-files`
* edit `database.yml` with your own credentials (postgreSQL)
* `rails db:create && rails db:migrate`

## Running apps
* run `rails s`
* open new tab and run `bin/webpack-dev-server`

## Browser
### Chat feature

* go to `localhost:3000/messages`
* open another browser or private browser and go to `localhost:3000/messages` as well

### Result
![GitHub Logo](/public/chat.png)

### Comment feature

* go to `localhost:3000/articles/:id`
* open another browser or private browser and go to `localhost:3000/articles/:id` as well

### Result
![GitHub Logo](/public/comment.png)

## Rspec
* run `rails db:test:prepare`
* run `rspec` to run unit test
