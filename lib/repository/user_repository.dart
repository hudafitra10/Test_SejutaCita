import 'dart:convert';

import 'package:test_sejutacita/models/users.dart';
import 'package:http/http.dart' as http;

// class UserRepository {
//   Future<List<Users>> fetchUsers() async {
//     List<Users> users = List();
//     await http
//         .get(Uri.parse('https://api.github.com/search/users?q=doraemon'))
//         .then((response) {
//       Iterable it = json.decode(response.body);
//       users = it.map((e) => users.fromjson(e)).toList();
//     });
//     return users;
//   }
// }
