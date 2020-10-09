import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:warframestat_api_models/models.dart';
import 'package:wfcd_client/wfcd_client.dart';

import 'fixtures/fixture_reader.dart';

void main() {
  const headers = {'content-type': 'application/json; charset=utf-8'};
  final stateFixture = fixture('worldstate.json');
  final testState = WorldstateModel.fromJson(
      json.decode(stateFixture) as Map<String, dynamic>);

  WarframestatClient clientApi;
  Dio mockClient;

  setUp(() {
    mockClient = Dio()
      ..interceptors.add(InterceptorsWrapper(onResponse: (e) {
        return json.decode(stateFixture) as Map<String, dynamic>;
      }));

    clientApi = WarframestatClient(dio: mockClient);
  });

  test('Retrive and decode Worldstate', () async {
    final state = await clientApi.getWorldstate(GamePlatforms.pc);

    expect(state, equals(testState));
  });
}
