# README
# Arcus School
Instructions
Welcome to the mid test for software engineering at arcus. Basically you have three models Course, Enrollment, Student and Teacher all of these models resemble a school in which students are enrolled to courses.

## Table of Contents
- [Installation](#installation)
- [Features](#features)
- [Tests](#tests)
---
## Installation
- (clone and cd into the directory)
- bin/setup # this gets you gems, a database and seed data
- bin/rails test # run tests and ensure you're all green (there are only a few tests)
- bin/rails server # check out that the env is sane
---
## Features
These are the features that we want to see implemented in the project
- Authentication
- Dockerized
- Tests (preferably using rspec)
- All of the endpoints should require the user to authenticate
- Improvement of performance is needed, so if you see any red flags on the response times please fix them
- All of the best pracices that you know of API's should be added
---
## Documentation
- Add any documentation that you might want about your usage
---
## Tests
- Add all the tests that you might need that are needed to cover your solution
- Use rspec

### Using Docker compose:

If you have docker compose installed it's as easy as running `docker-compose up`.

### Using Docker:

If you have docker installed it's as easy as running:
docker build -t angeltest .
docker run -it --rm angeltest bundle exec rake test
docker run -itP angeltest.