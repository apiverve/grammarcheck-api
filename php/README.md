# Grammar Check API - PHP Package

Grammar Check is a simple tool for checking the grammar and spelling of a text. It returns the corrected text.

## Installation

Install via Composer:

```bash
composer require apiverve/grammarcheck
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Grammarcheck\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['text' => 'The the pig snorted when I saw it on the barn gate. I was a little mad becuase it woke up my pupppppy']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Grammarcheck\Client;
use APIVerve\Grammarcheck\Exceptions\APIException;
use APIVerve\Grammarcheck\Exceptions\ValidationException;

try {
    $response = $client->execute(['text' => 'The the pig snorted when I saw it on the barn gate. I was a little mad becuase it woke up my pupppppy']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/grammarcheck?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/grammarcheck?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/grammarcheck?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
