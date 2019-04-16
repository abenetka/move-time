# README

[![Waffle.io - Columns and their card count](https://badge.waffle.io/abenetka/move-time.svg?columns=all)](https://waffle.io/abenetka/move-time)

## Description

MoveTime is the final technical challenge of Turing School's Backend Engineering Program. I was tasked to create a tool for people that are considering moving to a new city and to give them some data points about the city they are considering.

The project is built with Ruby on Rails, uses Travis CI for continuous integration, and is deployed with Heroku. It consumes the following APIs to provide users with data about different locations:

* [OpenDataSoft](https://data.opendatasoft.com/pages/home/)
* [Walk Score](https://www.walkscore.com/professional/api.php)
* [BreweryDB](https://www.brewerydb.com/developers)
* [Google Maps](https://developers.google.com/maps/documentation/)

#### [*View Move Time in Production*](https://thawing-thicket-96502.herokuapp.com/)

<img width="1430" alt="Screen Shot 2019-04-15 at 8 22 57 PM" src="https://user-images.githubusercontent.com/41347275/56177551-4ead9580-5fbc-11e9-88ff-33c91a86d2e9.png">

## Getting Started

To run Move Time on your local machine, navigate to the directory in which you would like the project to be located, then execute the following commands:

```
$ git clone git@github.com:abenetka/move-time.git
$ cd move-time
$ bundle
$ rails g rspec:install
$ rake db:create

```
#### Setup your environment variables:

##### Sign Up on the following API's:
* [Walk Score](https://www.walkscore.com/professional/api.php)
* [Google Maps](https://developers.google.com/maps/documentation/javascript/get-api-key)
* [BreweryDB](https://www.brewerydb.com/developers)


Add the following code snippet to your `config/application.yml` file.
```
google_maps_api_key: <insert key here>
wsapikey: <insert key here>
brewerydb_key: <insert key here>

```

## Running Tests

To run the test suite, execute the following command:

`rspec`


## Development

To view MoveTime in development:
`rails s`
and then in the browser, visit: `localhost:3000`

## Known Issues
- The data provided is just for major cities
- The data provided by OpenDataSoft is mostly comes from the 2015 US Census
- The BreweryDB API only releases a minimal number of data points in their Sandbox(free) developer mode. This data is not representative of the actual amount of breweries in the particular city.

### Versions
* Ruby 2.4.5
* Rails 5.2.3
* PostgreSQL 11

## Tools

* Travis CI
* Heroku
* Waffle.io

* RSpec
* Shoulda-Matchers
* FactoryBot
* Capybara
* SimpleCov
* Launchy
* Pry

## Rubric/Project Description
https://backend.turing.io/module4/projects/take_home_challenge/take_home_challenge_spec

## Author

* [Ali Benetka](https://github.com/abenetka)
