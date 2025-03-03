# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Project Generation

```
rails new rrrello --css=postcss --javascript=esbuild --database=postgresql
bundle add slim-rails
bin/rails g scaffold board title:string
bin/rails db:migrate
bin/rails db:fixtures:load
```
