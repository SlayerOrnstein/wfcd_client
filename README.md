## Usage

A simple usage example:

```dart
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:warframestat_api_models/warframestat_api_models.dart';

Future<void> main() async {
  final client = WarframestatClient();
  final worldstate = await client.getWorldstate(GamePlatforms.pc);

  print(worldstate.timestamp);
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/SlayerOrnstein/wfcd_client/issues
