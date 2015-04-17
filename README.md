# cinekeeper-api

API for the cinekeeper website

## Installation

### Prerequisites
* RVM with ruby 2.1.5
* bundler
* PostgreSQL

```bash
bundle install
rake db:setup
```

Copy ```.env.example``` to ```.env``` and ```config/database.yml.example``` to ```config/database.yml```. Then adjust according to your setup.

## Start Server

```bash
postgres # or other command to start your DB
rails s
```

### Tests
```bash
rails test
```
