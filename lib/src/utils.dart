import 'package:wfcd_api_wrapper/wfcd_api_wrapper.dart';

platformToString(Platforms platform) => platform.toString().split('.').last;

fullPath(Platforms platform, String subject) =>
    '/${platformToString(platform)}/$subject';
