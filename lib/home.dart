import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int ninjaLevel = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ninja.jpg'),
                radius: 50.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 3.0,
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Marc Corpus',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 3.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 3.0,
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 3.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40.0),
            ListTile(
              contentPadding: EdgeInsets.only(left: 0.0),
              leading: Icon(
                Icons.email,
                color: Colors.grey,
              ),
              title: Text(
                'marccorpus.dev@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel++;
          });
        },
        backgroundColor: Color(0XFF0148bc),
        child: Icon(
          Icons.add,
        ),
        elevation: 0.0,
      ),
    );
  }
}
