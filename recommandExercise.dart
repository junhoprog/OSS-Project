import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: first(),
    );
  }
}

class first extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님이 필요한 운동"),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            ListTile(
              leading: Image.asset('images/armMuscleicon.png'),
              title: Text('팔근육'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => detail1()));
              },
            ),
            ListTile(
              leading: Image.asset('images/legMuscleicon.png'),
              title: Text('다리근육'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => detail2()));
              },
            ),
            ListTile(
              leading: Image.asset('images/sixPackicon.png'),
              title: Text('몸통근육'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => detail3()));
              },
            )
          ],
        ));
  }
}
