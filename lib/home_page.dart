import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_sejutacita/providers/users_provisers.dart';
import 'package:test_sejutacita/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int? _value = 1;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 5),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[300],
                        contentPadding: EdgeInsets.all(0),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey.shade500,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none),
                        hintStyle: TextStyle(
                            fontSize: 14, color: Colors.grey.shade700),
                        hintText: "Search"),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value as int?;
                            });
                          }),
                      Text(
                        'User',
                        style: desc1TextStyle.copyWith(fontSize: 14),
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 2,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value as int?;
                                });
                              }),
                          Text(
                            'Issues',
                            style: desc1TextStyle.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 3,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value as int?;
                                });
                              }),
                          Text(
                            'Repositories',
                            style: desc1TextStyle.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                'Lazy Loading',
                                style: desc1TextStyle.copyWith(fontSize: 14),
                              ),
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.grey[300]),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Row(
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            child: Text('With Index',
                                style: desc1TextStyle.copyWith(fontSize: 14)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void setState(Null Function() param0) {}
