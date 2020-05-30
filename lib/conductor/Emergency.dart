import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:o_k/shared/drawer.dart';
import 'package:o_k/shared/constants.dart';
import 'package:o_k/shared/colors.dart';

Color factColor = Colors.orange[200];
Color factBoxColor = bgOrange;
Color helpBoxColor = bgOrange;
Color helpColor = Colors.orange[200];

var loading = false;

var _reportType = "";
var selectedReport = "";

final List<String> reportType = <String>[
  'Breakdown',
  'Protest on route',
  'Road inaccessible',
  'Road Accident'
];

class Emergency extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Quicksand-Medium'),
      title: 'Emergency',
      home: Scaffold(
        backgroundColor: Colors.orange[100],
        appBar: AppBar(
          elevation: 0,
          title: Text('Emergency'),
          backgroundColor: red,
        ),
        drawer: DrawerBuild(),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: SafeArea(
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        new DropdownButtonFormField(
                          hint: Text(
                            'Select a report',
                            style: TextStyle(color: Colors.grey),
                          ),
                          value: _reportType.isNotEmpty ? _reportType : null,
                          items: reportType
                              .map((value) => new DropdownMenuItem(
                                    value: value,
                                    child: Text('$value'),
                                  ))
                              .toList(),
                          isExpanded: true,
                          onChanged: (val) => (() {
                            _reportType = val;
                            selectedReport = val;
                            FocusScope.of(context).requestFocus(FocusNode());
                          }),
                          decoration: textInputDecorationNoHint(),
                        ),
                      ],
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: RaisedButton(
                      onPressed: () async {
                        loading = true;
                        Fluttertoast.showToast(msg: "Report Sent!");
                        loading = false;
                      },
                      child:
                          const Text('Proceed', style: TextStyle(fontSize: 20)),
                      color: red,
                      textColor: Colors.white,
                      splashColor: Colors.grey,
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Text('Help',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: helpColor,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          width: MediaQuery.of(context).size.width * 0.90,
                          child: Text('Helpline No.',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Quicksand-SemiBold')),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: helpColor,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          width: MediaQuery.of(context).size.width * 0.90,
                          child: Text('KeralaRTC Hub',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Quicksand-SemiBold')),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
