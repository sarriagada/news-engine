# README

News Engine bootcamp project

Dependencies:

* Ruby version
3.1.2

* Rails version
7.0.3

* System dependencies

* Configuration
clone the repo

`git clone git@github.com:sarriagada/news-engine.git`

move to the new folder

`cd news-engine`

install the dependencies

`bundle install`

* Env config
copy the content on `.env-sample` to a new file named `.env`

* Database initialization

`docker compose up`

* Database creation

`rails db:setup`

* Run server on http://localhost:3000/

`rails s`

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

`git push heroku-staging main`

show on https://newsengine.herokuapp.com/

`heroku logs --tail` to show logs

`heroku run rails console` to use the console

`heroku run rake db:migrate` to run migrations
