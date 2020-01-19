import 'dart:convert';

import 'package:http/http.dart';
import 'package:wfcd_client/src/utils/exceptions.dart';

dynamic excpetionHandler(Response response, {bool returnString = false}) {
  switch (response.statusCode) {
    case 200:
      if (returnString) {
        return response.body;
      }

      return json.decode(response.body);
    case 520:
      throw const CloudflareException();
    default:
      throw FetchDataException('Unable to connect: ${response.statusCode}');
  }
}
