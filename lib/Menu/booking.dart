import 'package:flutter/material.dart';
import 'package:o_k/Menu/seating.dart';
import 'package:o_k/homepage.dart';
import 'package:o_k/Menu/help.dart';
import 'package:o_k/Menu/reports.dart';
import 'package:o_k/User/profile.dart';
import 'package:o_k/User/user_count.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booking',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Booking'),
          backgroundColor: Colors.orange[200],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text(
                  'Odu Komban',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
              ),
              /*ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Messages'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Messages()),
                    );
                  },
                ),*/
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Users List'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Users_Count()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
              ),
              /*ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Settings()),
                    );
                  },
                ),*/
              ListTile(
                leading: Icon(Icons.report),
                title: Text('Report'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Reports()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Help'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Help()),
                  );
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(20.0),
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Container(
                        padding: const EdgeInsets.all(40.0),
                        child: new Form(
                          autovalidate: true,
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              new TextFormField(
                                decoration: new InputDecoration(
                                  hintText: 'From',
                                  hintStyle: new TextStyle(color: Colors.grey),
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: new BorderRadius.circular(20),
                                  ),
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              new Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                              ),
                              new TextFormField(
                                decoration: new InputDecoration(
                                  hintText: 'To',
                                  hintStyle: new TextStyle(color: Colors.grey),
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: new BorderRadius.circular(20),
                                  ),
                                ),
                                obscureText: false,
                                keyboardType: TextInputType.text,
                              ),
                              new Padding(
                                padding: const EdgeInsets.only(top: 30.0),
                              ),
                              new TextFormField(
                                decoration: new InputDecoration(
                                  hintText: 'Date Of Departure',
                                  hintStyle: new TextStyle(color: Colors.grey),
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: new BorderRadius.circular(20),
                                  ),
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              new Padding(
                                padding: const EdgeInsets.only(top: 30.0),
                              ),
                              SizedBox(
                                height: 50,
                                width: 200,
                                child: RaisedButton(
                                  onPressed: () {},
                                  child: const Text('Search',
                                      style: TextStyle(fontSize: 20)),
                                  color: Colors.red,
                                  textColor: Colors.white,
                                  splashColor: Colors.grey,
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
