// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:job_fair_system/Utilities/Global/global.dart';
import 'package:http/http.dart' as http;

class User {
  late String email, password, role;
  late int userId;
  User();

  User.fromMap(Map<dynamic, dynamic> res) {
    userId = res["UserId"];
    email = res["email"];
    password = res["Password"];
    role = res["Role"];
  }

  Map<String, Object?> toMap() {
    return {
      "UserId": userId,
      "Password": password,
      "Role": role,
      "email": email
    };
  }

  Future<String?> login() async {
    String url = '${ip}/User/Login?email=${email}&Password=${password}';
    Uri uri = Uri.parse(url);
    var response = await http.get(uri);
    if (response.statusCode == 200) return response.body;

    return null;
  }
}
