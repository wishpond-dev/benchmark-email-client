# BenchmarkEmailApi

This is a Gem built to use the ruby wrapper for Benchmark Email marketing. It has two main methods: one method creates a client object using the Benchmark credentials, the other is a method_missing. The methods you can call are documented in Benchmark's API docs.

[http://www.benchmarkemail.com/API/Library]

The parameters are the same minus the token ( always the first one to be passed according to the docs) because the client object already has it.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'benchmark_email_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install benchmark_email_api

## Usage

## Instantiate a **Client** object.

```ruby
BMEApi = BenchmarkEmailApi::Client.new(username, password, api_url)
```


The Api Url is usually a constant: *'http://api.benchmarkemail.com/1.0/'*.

All parameters for the client instantiation are **strings**.

## Call the methods on the api docs.

```ruby
BMEApi.listsGet
```

This is a lists method that will be sent to the Benchmark Api throught the Client.

```ruby
BMEApi.batchAddContacts(list_id, contacts)
```

Notice how we didn't need to pass the token as the docs suggested: [http://www.benchmarkemail.com/API/Doc/batchAddContacts]

## Contributing

1. Fork it ( https://github.com/[my-github-username]/benchmark_email_api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
