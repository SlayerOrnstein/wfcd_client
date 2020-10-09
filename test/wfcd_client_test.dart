import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:warframestat_api_models/models.dart';
import 'package:wfcd_client/wfcd_client.dart';

import 'fixtures/fixture_reader.dart';

void main() {
  final stateFixture = fixture('worldstate.json');
  final testState = WorldstateModel.fromJson(
      json.decode(stateFixture) as Map<String, dynamic>);

  WarframestatClient clientApi;

  setUp(() {
    clientApi = WarframestatClient();

    clientApi.interceptors.add(InterceptorsWrapper(onResponse: (e) {
      return json.decode(stateFixture) as Map<String, dynamic>;
    }));
  });

  test('Retrive and decode Worldstate', () async {
    final state = await clientApi.getWorldstate(GamePlatforms.pc);

    expect(state, equals(testState));
  });
}
