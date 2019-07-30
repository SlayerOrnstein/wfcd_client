import 'package:wfcd_api_wrapper/worldstate_wrapper.dart';

platformToString(Platforms platform) => platform.toString().split('.').last;

fullPath(Platforms platform, String subject) =>
    '/${platformToString(platform)}/$subject';
