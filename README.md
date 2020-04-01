# FIRST STEPS

With these information you can start the development.

### The important gems that are used...

* Simplecov

* RSpec

* Guard

* RVM

* PostgreSQL

### Build the project in your local environment

You need run these commands

`bundle`

&&

`rails db:drop db:create db:migrate db:seed`

### TDD development

This project use the TDD methodology so it's installed the Guard gem and with this every time the files are modified the tests still running.

To do this run

`bundle exec guard`

Every time that some table is changed, add fields, deleted, the developer must generate a new diagram with model relationships, for this run:

### Deploy environments

#### Production Environment

Actually the Production environment is in Heroku with the domain **http://cuida-pet.herokuapp.com/**

`git push heroku master`

`heroku rake db:migrate`
