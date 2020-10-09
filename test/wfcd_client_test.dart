import 'dart:convert';

import 'package:http/http.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:warframestat_api_models/models.dart';
import 'package:wfcd_client/wfcd_client.dart';

import 'fixtures/fixture_reader.dart';

class MockClient extends Mock implements Client {}

void main() {
  const headers = {'content-type': 'application/json; charset=utf-8'};
  final stateFixture = fixture('worldstate.json');
  final testState = WorldstateModel.fromJson(
      json.decode(stateFixture) as Map<String, dynamic>);

  WarframestatClient clientApi;
  MockClient mockClient;

  setUp(() {
    mockClient = MockClient();
    clientApi = WarframestatClient(mockClient);
  });

  test('Retrive and decode Worldstate', () async {
    when(mockClient.get(any, headers: anyNamed('headers')))
        .thenAnswer((_) async => Response(stateFixture, 200, headers: headers));

    final state = await clientApi.getWorldstate(GamePlatforms.pc);

    expect(state, equals(testState));
  });
}
