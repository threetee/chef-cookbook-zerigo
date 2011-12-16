Description
===========

Provides a LWRP that allows interaction with the Zerigo DNS service.

Requirements
============

A Zerigo account.

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