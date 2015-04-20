# cinekeeper-api

API for the cinekeeper website

## Getting Started

### Prerequisites
* imagemagick (e.g. via brew install imagemagick)
* RVM with ruby 2.1.5
* bundler
* PostgreSQL

Copy ```.env.example``` to ```.env``` and ```config/database.yml.example``` to ```config/database.yml```. Then adjust according to your setup.

### Installation

```bash
bundle install
rake db:setup
```

## Development

### Start Server

```bash
postgres # or other command to start your DB
rails s
```

### Tests
```bash
rails test
```
