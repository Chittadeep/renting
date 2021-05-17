import 'package:flutter/material.dart';
import 'package:renting/Screens/MyCustomForm.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Home.dart';

class MyApp extends StatefulWidget {
  List<Home> l = [];
  //List l = [
  // Home("Bidhan Park", "Susit Kumar Sinha", "9832747626", "asset/home1.jpg",
  //     500.00),
  // Home("Arvil Park", "Tridib Sinha", "9832747626", "asset/home2.jpg", 600.00),
  // Home("Shankarpur", "Soma Biswas", "9132744762", "asset/home3.jpeg", 700.00),
  // Home("Kolkata", "Chittadeep Biswas", "8967149075", "Assets/Photo4.jpg",
  //     800.00)
  //];

  MyApp();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Home> l=[];

  _MyAppState();

  // addStringToSF() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setString('stringValue', "dhurbal");
  // }

  // getStringValuesSF() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String stringValue = prefs.getString('stringValue');
  //   print(stringValue);
  // }

  Widget getEmpty(BuildContext context) {
    return Icon(Icons.ac_unit);
  }

  Widget getFull(BuildContext context) {
    return ListView.builder(
        itemCount: l.length,
        itemBuilder: (context, index) {
          return ListTile(
            // leading: Image.asset(
            //   l[index].photoPath,
            //   height: 200.0,
            //   width: 200.0,
            //   errorBuilder: (BuildContext context, Object exception,
            //       StackTrace stackTrace) {
            //     return Text("error occured");
            //   },
            // ),
            title: Text(l[index].address),
            subtitle: Text(l[index].owner),
          );
        });
  }

  void updateData(BuildContext context) async {
    Home home = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyCustomForm()),
    );
    //print(home.address);
    l.add(home);
    print(l);
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    //addStringToSF();
    //if (l.isEmpty == true) {
    print("rebuilding");
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            updateData(context);

          },
        ),
        body: Center(
            child: l.isEmpty ? getEmpty(context) : getFull(context),
            ),
      ),
    );
  }
}
