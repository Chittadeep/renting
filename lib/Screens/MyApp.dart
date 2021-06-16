import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Home.dart';
import 'MyCustomForm.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List l = [];

  Future fetchData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    l = json.decode(prefs.getString('list'));
    print(l);
  }

  void updateData(BuildContext context) async {
    Home home = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyCustomForm()),
    );
    l.add(home.toJson());
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('list', json.encode(l));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  updateData(context);
                }),
            body: FutureBuilder(
                future: fetchData(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    print(snapshot.error);
                  }

                  if (snapshot.connectionState == ConnectionState.done) {
                    return Center(
                        child: ListView.builder(
                            itemCount: l.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                  title: Text(l[index]['owner']),
                                  subtitle: Text(l[index]['address']));
                            }));
                  }

                  return Center(child: CircularProgressIndicator());
                })));
  }
}
