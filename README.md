SpreeReturnAuthorizationsFrontend
=================================

This extension adds a frontend interface to allow user to ask for items returns.

This fork makes the following changes:
- add exchange options to the frontend interface
- remove the need for admin to authorize a return/exchange request
- add email confirmation when RMA is filed
- remove return request list from order details page
- only allow a return request to be file when there is no existing return authorization on the item (or when all existing ones are canceled)

Installation
------------

Add spree_return_authorizations_frontend to your Gemfile:

```ruby
gem 'spree_return_authorizations_frontend', github: 'strava/spree_return_authorizations_frontend', branch: '2-4-stable'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
```

Testing
-------

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_return_authorizations_frontend/factories'
```

Copyright (c) 2015 [Nebulab], released under the New BSD License
