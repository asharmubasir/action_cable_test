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
* go to `localhost:3000`
* open another browser or private browser and go to `localhost:3000` as well

## Result
![GitHub Logo](/public/chat.png)


run `rspec` to run unit test
