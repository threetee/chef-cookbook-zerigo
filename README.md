Description
===========

Provides LWRPs that allow interaction with the Zerigo DNS service from your chef recipes.

Requirements
============

A Zerigo account.

Installation
============

1. Install the github cookbooks knife plugin (https://github.com/websterclay/knife-github-cookbooks).
2. Install the zerigo cookbook:

    $ knife cookbook github install threetee/chef-cookbook-zerigo

Usage
=====

```ruby
include_recipe "zerigo"

zerigo_zone "create a zone" do
  domain  "test.com"
  email   "hostmaster@test.com"

  zerigo_email          "zerigo-account@somewhere.com"
  zerigo_token          "zerigo_api_token"

  action :create
end

zerigo_record "create a record" do
  name  "test"
  value "16.8.4.2"
  type  "A"

  zone_id               "test.com"   # Zerigo-hosted domain name
  zerigo_email          "zerigo-account@somewhere.com"
  zerigo_token          "zerigo_api_token"

  action :create
end
```

Credits
=======

Inspired by https://github.com/heavywater/community-cookbooks/tree/master/route53.