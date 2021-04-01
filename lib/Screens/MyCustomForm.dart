import 'package:flutter/material.dart';
import 'package:renting/Home.dart';
import 'package:renting/Screens/MyApp.dart';

class MyCustomForm extends StatelessWidget {
  List l;
  MyCustomForm(this.l);
  var name = TextEditingController();
  var address = TextEditingController();
  var phone = TextEditingController();
  var amount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: "Enter owner's name",
                    labelText: 'Name'),
                controller: name,
              ),
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.home),
                    hintText: "Enter address",
                    labelText: 'Address'),
                controller: address,
              ),
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.phone),
                    hintText: "Enter owner's phone number",
                    labelText: 'Contact No.'),
                controller: phone,
              ),
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.money),
                    hintText: "Enter amount per month",
                    labelText: 'Amount'),
                controller: amount,
              ),
              ElevatedButton(
                  onPressed: () {
                    l.add(Home(address.text, name.text, phone.text, "photoPath",
                        double.parse(amount.text)));
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp(l)),
                    );
                  },
                  child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
