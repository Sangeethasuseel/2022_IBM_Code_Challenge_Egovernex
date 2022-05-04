import 'package:egovernex/Pages/registration.dart';
import 'package:egovernex/Pages/status.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'EGovernex',
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.dehaze_rounded,
              color: Colors.black54,
              size: 40,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Status(),
                  ));
            },
          )
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),


                    Container(
                      width: 350,
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: ButtonTheme(
                        padding: EdgeInsets.all(12),
                        buttonColor: Colors.green,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Registration()),
                            );
                          },
                          child: Text(
                            'Adhar Application',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 350,
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: ButtonTheme(
                        padding: EdgeInsets.all(12),
                        buttonColor: Colors.green,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          onPressed: () {

                          },
                          child: Text(
                            'Pension Application',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 350,
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: ButtonTheme(
                        padding: EdgeInsets.all(12),
                        buttonColor: Colors.green,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          onPressed: () {

                          },
                          child: Text(
                            'Pan Card Application',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}