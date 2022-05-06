// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myapp/globals.dart' as globals;
import 'package:myapp/status_page.dart';

import 'form_page.dart';

class PreviewPage extends StatefulWidget {

  const PreviewPage({Key? key}) : super(key: key);

  @override
  State<PreviewPage> createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage> {


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
                          child: Text('preview', style: TextStyle(color: Colors.black, fontSize: 25,fontWeight: FontWeight.w500),),
                        ),
                        SizedBox(height: 20,),

                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            width: double.infinity,
                            height: 50,
                            color: Colors.transparent,
                            // child: Text('Your application is under review. Kindly be patient...', style: TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 21,fontWeight: FontWeight.w400),),
                            child: Column(
                              children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('name  :  ${globals.name}', style: TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 21,fontWeight: FontWeight.w400),),
                                ),
                              ),
                             Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('mobile  :  ${globals.mobile}', style: TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 21,fontWeight: FontWeight.w400),),
                                ),
                              ),

                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Date of Birth  :  ${globals.dob}', style: TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 21,fontWeight: FontWeight.w400),),
                                ),
                              ),

                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Pension type  :  ${globals.type}', style: TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 21,fontWeight: FontWeight.w400),),
                                ),
                              ),

                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Adhar number  :  ${globals.adhar}', style: TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 21,fontWeight: FontWeight.w400),),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('address  :  ${globals.address}', style: TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 21,fontWeight: FontWeight.w400),),
                                ),
                              ),
                              ],
                            ),
                          ),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FormPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFFFFFF),
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          side: BorderSide(
                            color: Color(0xFF1A1A24).withOpacity(0.5),),
                        ),
                        child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 55,
                                      right: 55,
                                      top: 23,
                                      bottom: 23
                                    ),
                                    child: const Text(
                                      'BACK',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Color(0xFF1A1A24),
                                        fontFamily: 'Comfortaa',
                                        fontWeight: FontWeight.w300,
                                      ),
                                      ),
                                  ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => StatusPage()));
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
                                      left: 53,
                                      right: 53,
                                      top: 23,
                                      bottom: 23
                                    ),
                                    child: const Text(
                                      'SUBMIT',
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