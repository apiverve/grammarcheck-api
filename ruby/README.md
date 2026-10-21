# Grammar Check API - Ruby Gem

Grammar Check is a grammar checker and spell check API that inspects text for spelling and grammar errors, returning the corrected wording, error count, and a modified flag. Paid plans add detailed rule descriptions, character offsets, and suggestions for every detected mistake.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_grammarcheck'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_grammarcheck
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_grammarcheck'

# Initialize the client
client = APIVerve::Grammarcheck::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ text: "The the pig snorted when I saw it on the barn gate. I was a little mad becuase it woke up my pupppppy" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ text: "The the pig snorted when I saw it on the barn gate. I was a little mad becuase it woke up my pupppppy" })
  puts response["data"]
rescue APIVerve::Grammarcheck::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Grammarcheck::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Grammarcheck::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "modified": true,
    "corrected": "The pig snorted when I saw it on the barn gate. I was a little mad because it woke up my puppy",
    "errorCount": 3,
    "corrections": [
      {
        "rule": "repeated_word",
        "message": "Did you mean to repeat the word \"The\"?",
        "position": {
          "start": 0,
          "end": 7
        },
        "suggestions": [
          "The"
        ]
      },
      {
        "rule": "spelling",
        "message": "Did you mean \"because\"?",
        "position": {
          "start": 67,
          "end": 74
        },
        "suggestions": [
          "because"
        ]
      },
      {
        "rule": "spelling",
        "message": "Did you mean \"puppy\"?",
        "position": {
          "start": 92,
          "end": 101
        },
        "suggestions": [
          "puppy"
        ]
      }
    ]
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/grammarcheck?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/grammarcheck?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/grammarcheck?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
