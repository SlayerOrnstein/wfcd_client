import 'dart:io';

import 'package:test/test.dart';
import 'package:wfcd_client/clients.dart';
import 'package:path/path.dart' as path;
import 'package:wfcd_client/enums.dart';

void main() {
  final directory = Directory.systemTemp;

  File rivenData;
  RivenDataClient client;

  setUp(() {
    rivenData = File(path.join(directory.path, 'riven_data.json'));
    client = RivenDataClient(rivenData);
  });

  tearDown(() async {
    await rivenData.delete();
  });

  group('Test Riven data download per platform', () {
    test('PC download check', () async {
      await client.downloadRivenData();

      expect(rivenData.existsSync(), true);
    });

    test('PS4 download check', () async {
      client = client.copyWith(rivenData, Platforms.ps4);

      await client.downloadRivenData();

      expect(rivenData.existsSync(), true);
    });

    test('Xbox One download check', () async {
      client = client.copyWith(rivenData, Platforms.xb1);

      await client.downloadRivenData();

      expect(rivenData.existsSync(), true);
    });

    test('Nintendo Switch download check', () async {
      client = client.copyWith(rivenData, Platforms.swi);

      await client.downloadRivenData();

      expect(rivenData.existsSync(), true);
    });
  });

  group('Test Riven data category retrivers', () {
    test('Retrive Archgun rivens', () async {
      final corvas = await client.getArchgunRivenData('Corvas');

      expect(corvas.rerolled.compatibility, 'Corvas');
    });

    test('Retrive Kitgun rivens', () async {
      final catchmoon = await client.getKitgunRivenData('Catchmoon');

      expect(catchmoon.rerolled.compatibility, 'Catchmoon');
    });

    test('Retrive Melee rivens', () async {
      final melee = await client.getMeleeRivenData('Ack & Brunt');

      expect(melee.rerolled.compatibility, 'Ack & Brunt');
    });

    test('Retrive Pistol Riven', () async {
      final pistol = await client.getPistolRivenData('Afuris');

      expect(pistol.rerolled.compatibility, 'Afuris');
    });

    test('Retrive Rifle rivens', () async {
      final rifle = await client.getRifleRivenData('Soma');

      expect(rifle.rerolled.compatibility, 'Soma');
    });

    test('Retrive Shotgun rivens', () async {
      final shotgun = await client.getShotgunRivenData('Arca Plasmor');

      expect(shotgun.rerolled.compatibility, 'Arca Plasmor');
    });

    test('Retrive Zaw rivens', () async {
      final zaw = await client.getZawRivenData('Balla');

      expect(zaw.rerolled.compatibility, 'Balla');
    });
  });
}
