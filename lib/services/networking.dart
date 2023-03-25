import 'package:http/http.dart' as http;
import 'dart:convert';

class Networking {
  Networking(this.url);
  final url;

  Future getData() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var resData = response.body;

      return jsonDecode(resData);
    } else {
      print(response.statusCode);
    }
  }
}
