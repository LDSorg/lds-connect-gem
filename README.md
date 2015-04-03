Depracated
==========

LDS I/O uses [OAuth3](https://github.com/OAuth3), so it doesn't require an LDS I/O specific module.

See [LDS I/O ruby sinatra example](https://github.com/LDSorg/backend-oauth2-ruby-sinatra-example) and [ruby-oauth3](https://github.com/OAuth3/ruby-oauth3).

# ruby-lds-connect-gem
Ruby / Sinatra OAuth2 authentication strategy for connecting to lds.org thru LDS Connect

```
gem install ldsconnect
```

```
require "ldsconnect"
```

```ruby
client_id = '55c7-test-bd03'
client_secret = '6b2fc4f5-test-8126-64e0-b9aa0ce9a50d'
strategy = LdsConnect.new(client_id, client_secret, options={})
```

## License

Apache2
