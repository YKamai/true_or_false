# True Or False

Welcome to your new Hanami project!

## Setup

How to run tests:

```
% bundle exec rake
```

How to run the development console:

```
% bundle exec hanami console
```

How to run the development server:

```
% bundle exec hanami server
```

How to prepare (create and migrate) DB for `development` and `test` environments:

```
% bundle exec hanami db prepare

% HANAMI_ENV=test bundle exec hanami db prepare
```

Explore Hanami [guides](https://guides.hanamirb.org/), [API docs](http://docs.hanamirb.org/1.3.3/), or jump in [chat](http://chat.hanamirb.org) for help. Enjoy! 🌸



docker run --name postgres-dev -p 5432:5432 -e POSTGRES_USER=dev -e POSTGRES_PASSWORD=password -e POSTGRES_DB=true_or_flase_dev -d postgres
docker run --name postgres-test -p 5432:5432 -e POSTGRES_USER=test -e POSTGRES_PASSWORD=password -e POSTGRES_DB=true_or_flase_test -d postgres


db_url = "postgresql://#{ENV['POSTGRES_USER']}:#{ENV['POSTGRES_PASSWORD']}@#{ENV['POSTGRES_HOST']}:#{ENV['POSTGRES_PORT']}/#{ENV['POSTGRES_DB']}"

db_url = "postgresql://dev:password@localhost:5432/true_or_flase_dev"
