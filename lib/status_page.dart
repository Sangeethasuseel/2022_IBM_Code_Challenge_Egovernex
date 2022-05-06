// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myapp/globals.dart' as globals;

class StatusPage extends StatefulWidget {

  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Material(
        color: Colors.white,
        child: Expanded(
          child: Container(
            child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 30,right: 30),
                    width: double.infinity,
                    height: 100,
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 50
                        ,),
                        Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: 50,
                          color: Colors.transparent,
                          child: Text('Status', style: TextStyle(color: Colors.black, fontSize: 25,fontWeight: FontWeight.w500),),
                        ),
                        SizedBox(height: 20,),

                        Container(
                          alignment: Alignment.centerLeft,
                          width: double.infinity,
                          height: 50,
                          color: Colors.transparent,
                          child: Text('Your application is under review. Kindly be patient...', style: TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 21,fontWeight: FontWeight.w400),),
                        ),
                      ],
                    ),
                  ),),

                Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 20,),
                      
                      ElevatedButton(
                        onPressed: () {
                         
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF1A1A24),
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 100,
                                      right: 100,
                                      top: 23,
                                      bottom: 23
                                    ),
                                    child: const Text(
                                      'OKAY',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white,
                                        fontFamily: 'Comfortaa',
                                        fontWeight: FontWeight.w300,
                                      ),
                                      ),
                                  ),
                      ),
                      SizedBox(width: 20,),
                    ]
                  ),
                ),
                
              ],
          ),
        ),),
      ),);
  }
}