# Web Portfolios

Create your profile and find a new job.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

You must have docker and docker-compose installed

```
For more information, please see https://docs.docker.com/install/ 
```

### Installing

Access the project folder in your terminal enter the following

```
$ docker-compose build
```

```
$ docker-compose run --rm app bundle install
```

```
$ docker-compose run --rm app bundle exec rails db:create
```

```
$ docker-compose run --rm app bundle exec rails db:migrate
```
After that for test the installation enter the following to up the server

```
$ docker-compose up
```
## Running the tests

To run the tests run the following in your terminal

```
$ docker-compose -f docker-compose-test.yml run test --rm app bundle exec cucumber
```
## Built With

* [Ruby on Rails](https://rubyonrails.org/) - The web framework used
* [PostgreSQL](https://www.postgresql.org/) - SGDB
* [VueJs](https://github.com/vuejs/vuejs.org) - Frontend framework.
* [Cucumber](https://github.com/cucumber/cucumber) - Cucumber is a tool that supports Behaviour-Driven Development (BDD).
* [Sidekiq](https://github.com/mperham/sidekiq) - FSimple, efficient background processing for Ruby.
* [rspec-rails](https://github.com/rspec/rspec-rails) - brings the RSpec testing framework to Ruby on Rails as a drop-in alternative to its default testing framework, Minitest.
* [factory_bot](https://github.com/thoughtbot/factory_bot) - factory_bot is a fixtures replacement with a straightforward definition syntax, support for multiple build strategies (saved instances, unsaved instances, attribute hashes, and stubbed objects), and support for multiple factories for the same class (user, admin_user, and so on), including factory inheritance.
* [ffaker](https://github.com/ffaker/ffaker) - is used to generated fake data.

## Authors

* **Ronaldo Carneiro da Silva Filho** - *Initial work* - [kikogamer](https://github.com/kikogamer)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* The bootcamp super full stack team.
