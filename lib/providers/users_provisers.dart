import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UsersProvider extends ChangeNotifier {
  getUsers() async {
    var result = await http
        .get(Uri.parse('https://api.github.com/search/users?q=doraemon'));

    print(result.statusCode);
    print(result.body);
  }
}
