import 'dart:io';

import 'package:test/test.dart';
import 'package:wfcd_client/clients.dart';
import 'package:path/path.dart' as path;
import 'package:wfcd_client/enums.dart';

void main() {
  File rivenData;
  RivenDataClient client;

  setUpAll(() {
    final directory = Directory.systemTemp;

    rivenData = File(path.join(directory.path, 'riven_data.json'));
    client = RivenDataClient(rivenData);
  });

  group('Test Riven data download', () {
    test('check downloaded file exist', () async {
      await client.downloadRivenData(Platforms.pc);

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
