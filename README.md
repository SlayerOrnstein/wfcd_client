Simple wrapper for worldstate api and maybe other WFCD APIs.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:

```dart
Future<void> main() async {
  final api = await WorldstateApiWrapper(Client());
  final worldstate = await api.getWorldstate(Platforms.pc);

  //prints worldstate generated timestamp
  print(worldstate.timestamp);
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme
