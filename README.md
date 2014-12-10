# Doorguru

### Description
Our project is intended to help with opening the office door. Instead of using key or ID card, one can simply open it having Beacon App installed (iPhone 6) (https://github.com/netguru-hackathon/doorguru-ios) and coming close to the door. It is also necessary to place iBeacon in the surrounding for localization purposes. IOS App checks if the user is close enough to iBeacon, if so, sends a POST request and after receiving '200' response code user is able to come in.

### Heroku
Website works on heroku
  * http://doorguru.herokuapp.com/doors/1
  * https://doorguru.herokuapp.com/doc#!/open/POST_version_open_format

### Environment
  * Ruby: 2.1.5
  * Rails: 4.2.0

### Configuration
  * Copy `database.yml.sample` to `database.yml`
  * Run `bundle exec rake db:setup`
  * Copy `.env.sample` to `.env`

### Future
This system can be easily integrated with Fibaro one.


