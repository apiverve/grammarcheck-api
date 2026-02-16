# Grammar Check API - Dart/Flutter Client

Grammar Check is a simple tool for checking the grammar and spelling of a text. It returns the corrected text.

[![pub package](https://img.shields.io/pub/v/apiverve_grammarcheck.svg)](https://pub.dev/packages/apiverve_grammarcheck)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Grammar Check API](https://apiverve.com/marketplace/grammarcheck?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_grammarcheck: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_grammarcheck/apiverve_grammarcheck.dart';

void main() async {
  final client = GrammarcheckClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'text': 'The the pig snorted when I saw it on the barn gate. I was a little mad becuase it woke up my pupppppy'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "modified": true,
    "text": "The pig snorted when I saw it on the barn gate. I Was a little mad because it woke up my puppy."
  }
}
```

## API Reference

- **API Home:** [Grammar Check API](https://apiverve.com/marketplace/grammarcheck?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/grammarcheck](https://docs.apiverve.com/ref/grammarcheck?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
