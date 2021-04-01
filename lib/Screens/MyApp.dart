import 'package:flutter/material.dart';
import 'package:renting/Screens/MyCustomForm.dart';
//import '../Home.dart';

class MyApp extends StatefulWidget {
  List l = [
    // Home("Bidhan Park", "Susit Kumar Sinha", "9832747626", "asset/home1.jpg",
    //     500.00),
    // Home("Arvil Park", "Tridib Sinha", "9832747626", "asset/home2.jpg", 600.00),
    // Home("Shankarpur", "Soma Biswas", "9132744762", "asset/home3.jpeg", 700.00),
    // Home("Kolkata", "Chittadeep Biswas", "8967149075", "Assets/Photo4.jpg",
    //     800.00)
  ];

  MyApp(this.l);

  @override
  _MyAppState createState() => _MyAppState(l);
}

class _MyAppState extends State<MyApp> {
  List l;

  _MyAppState(this.l);

  @override
  Widget build(BuildContext context) {
    // if (l.isEmpty == true) {
    //   return MaterialApp(
    //     home: Scaffold(
    //       body: Center(
    //         child: Icon(Icons.ac_unit),
    //       ),
    //     ),
    //   );
    // }

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyCustomForm(l)),
            );
          },
        ),
        body: Center(
          child: ListView.builder(
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
              }),
        ),
      ),
    );
  }
}
