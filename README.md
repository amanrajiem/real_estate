# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

Ruby version
-----------------
    ruby '2.4.2'

Database creation
-----------------
    rake db:create

Database initialization
----------------- 
    rake db:schema:load
    rake db:seed 

How to run the test suite
-----------------

Services (job queues, cache servers, search engines, etc.)
-----------------
    bundle exec sidekiq

Deployment instructions
-----------------

    bundle install
    rake db:create 
    rake db:schema:load
    rake db:seed 
    bundle exec rails s -p 3000

