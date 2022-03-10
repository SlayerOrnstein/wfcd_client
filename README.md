## Usage

A simple usage example:

```dart
import 'package:warframestat_api_models/warframestat_api_models.dart';

Future<void> main() async {
  final client = WarframestatClient(platform: GamePlatforms.pc);
  final worldstate = await client.getWorldstate();

  print(worldstate?.timestamp);
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/SlayerOrnstein/wfcd_client/issues
