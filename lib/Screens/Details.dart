import 'package:flutter/material.dart';
import '../Home.dart';

class Details extends StatelessWidget {
  final Home home;

  Details({Key key, this.home}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Covid Tracker"), actions: [
              Column(mainAxisSize: MainAxisSize.max, children: [
                Text(
                  'Created by \nChittadeep Biswas',
                )
              ])
            ]),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(home.address), Text(home.monthly.toString()), Text(home.owner), Text(home.phoneNumber)],
        ),
      ),
    );
  }
}
