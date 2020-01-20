import 'dart:io';

import 'package:test/test.dart';
import 'package:wfcd_client/clients.dart';
import 'package:wfcd_client/enums.dart';

void main() {
  final directory = Directory.systemTemp;
  RivenDataClient client = RivenDataClient(directory.path);

  group('Test Riven data download per platform', () {
    test('PC download check', () async {
      await client.downloadRivenData();

      expect(client.rivenData.existsSync(), true);
    });

    test('PS4 download check', () async {
      client = client.copyWith(platform: Platforms.ps4);

      await client.downloadRivenData();

      expect(client.rivenData.existsSync(), true);
    });

    test('Xbox One download check', () async {
      client = client.copyWith(platform: Platforms.xb1);

      await client.downloadRivenData();

      expect(client.rivenData.existsSync(), true);
    });

    test('Nintendo Switch download check', () async {
      client = client.copyWith(platform: Platforms.swi);

      await client.downloadRivenData();

      expect(client.rivenData.existsSync(), true);
    });
  });

  group('Test Riven data category retrivers', () {
    test('Retrive Archgun rivens', () async {
      final corvas =
          await client.getArchgunRivenData('Veiled Archgun Riven Mod');

      expect(corvas.unrolled.itemType, 'Archgun Riven Mod');
    });

    test('Retrive Kitgun rivens', () async {
      final catchmoon =
          await client.getKitgunRivenData('Veiled Kitgun Riven Mod');

      expect(catchmoon.unrolled.itemType, 'Kitgun Riven Mod');
    });

    test('Retrive Melee rivens', () async {
      final melee = await client.getMeleeRivenData('Veiled Melee Riven Mod');

      expect(melee.unrolled.itemType, 'Melee Riven Mod');
    });

    test('Retrive Pistol Riven', () async {
      final pistol = await client.getPistolRivenData('Veiled Pistol Riven Mod');

      expect(pistol.unrolled.itemType, 'Pistol Riven Mod');
    });

    test('Retrive Rifle rivens', () async {
      final rifle = await client.getRifleRivenData('Veiled Rifle Riven Mod');

      expect(rifle.unrolled.itemType, 'Rifle Riven Mod');
    });

    test('Retrive Shotgun rivens', () async {
      final shotgun =
          await client.getShotgunRivenData('Veiled Shotgun Riven Mod');

      expect(shotgun.unrolled.itemType, 'Shotgun Riven Mod');
    });

    test('Retrive Zaw rivens', () async {
      final zaw = await client.getZawRivenData('Veiled Zaw Riven Mod');

      expect(zaw.unrolled.itemType, 'Zaw Riven Mod');
    });
  });
}
