// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myapp/globals.dart' as globals;
import 'package:myapp/preview_page.dart';

class FormPage extends StatefulWidget {

  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _mobileController = new TextEditingController();
  TextEditingController _addressController = new TextEditingController();
  TextEditingController _dobController = new TextEditingController();
  TextEditingController _adharController = new TextEditingController();

  String _pensionType = 'select';

  bool _accpeted = false;

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
                          child: Text('User Registration Form', style: TextStyle(color: Colors.black, fontSize: 25,fontWeight: FontWeight.w500),),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: double.infinity,
                          height: 80,
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Full Name', style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w500))),
                              SizedBox(height: 10,),

                              Container(height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:  BorderRadius.circular(5),
                                  border: Border.all(color: Colors.black.withOpacity(0.2), width: 1)
                                ),
                              child: TextField(
                                maxLength: 42,
                                readOnly: false,
                                controller: _nameController,
                                style: TextStyle(fontSize: 15.5,color: Color.fromARGB(255, 0, 0, 0)),
                                onTap: () async {

                                },
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(fontSize: 15,color: Color(0xFFBFBFBF)),
                                  hintText: 'Luke Skywalker',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(left: 20,top: 7,bottom: 15),
                                  counterText: '',
                                ),
                              ),
                              ),
                            ],
                          ),
                          ),
                        SizedBox(height: 10,),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: double.infinity,
                          height: 80,
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Mobile Number', style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w500))),
                              SizedBox(height: 10,),

                              Container(height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:  BorderRadius.circular(5),
                                  border: Border.all(color: Colors.black.withOpacity(0.2), width: 1)
                                ),
                              child: TextField(
                                maxLength: 42,
                                readOnly: false,
                                controller: _mobileController,
                                style: TextStyle(fontSize: 15.5,color: Color.fromARGB(255, 0, 0, 0)),
                                onTap: () async {

                                },
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(fontSize: 15,color: Color(0xFFBFBFBF)),
                                  hintText: '+91- ##########',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(left: 20,top: 7,bottom: 15),
                                  counterText: '',
                                ),
                              ),
                              ),
                              
                            ],
                          ),
                          ),
                        SizedBox(height: 10,),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: double.infinity,
                          height: 150,
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Address', style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w500))),
                              SizedBox(height: 10,),

                              Container(height: 120,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:  BorderRadius.circular(5),
                                  border: Border.all(color: Colors.black.withOpacity(0.2), width: 1)
                                ),
                              child: TextField(
                                keyboardType: TextInputType.multiline,
                                maxLines: null,
                                readOnly: false,
                                controller: _addressController,
                                style: TextStyle(fontSize: 15.5,color: Color.fromARGB(255, 0, 0, 0)),
                                onTap: () async {

                                },
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(fontSize: 15,color: Color(0xFFBFBFBF)),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(left: 20,top: 7,bottom: 15),
                                  counterText: '',
                                ),
                              ),
                              ),
                              
                            ],
                          ),
                          ),  
                        SizedBox(height: 10,),
                        Container(
                          width: double.infinity,
                          height: 80,
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 170,
                                height: 80,
                                color: Colors.transparent,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  width: double.infinity,
                                  height: 80,
                                  color: Colors.transparent,
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text('Date of Birth', style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w500))),
                                      SizedBox(height: 10,),

                                      Container(height: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:  BorderRadius.circular(5),
                                          border: Border.all(color: Colors.black.withOpacity(0.2), width: 1)
                                        ),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        readOnly: false,
                                        controller: _dobController,
                                        style: TextStyle(fontSize: 15.5,color: Color.fromARGB(255, 0, 0, 0)),
                                        onTap: () async {

                                        },
                                        
                                        decoration: InputDecoration(
                                          hintStyle: TextStyle(fontSize: 15,color: Color(0xFFBFBFBF),),
                                          hintText: 'DD/MM/YYYY',
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.zero,
                                          counterText: '',
                                        ),
                                      ),
                                      ),
                                      
                                    ],
                                  ),
                                  ),
                                ),

                              SizedBox(width: 20,),
                              Container(
                                width: 170,
                                height: 80,
                                color: Colors.transparent,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  width: double.infinity,
                                  height: 80,
                                  color: Colors.transparent,
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text('Type of pension', style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w500))),
                                      SizedBox(height: 10,),

                                      DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:  BorderRadius.circular(5),
                                          border: Border.all(color: Colors.black.withOpacity(0.2), width: 1)
                                        ),
                                      child: Container(
                                        width: 170,
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton<String>(
                                            hint: Text('       '+_pensionType),
                                            
                                              // ? Text(['type 1', 'type 2', 'type 3'].firstWhere((item) => item["value"] == value)["text"])
                                              // : null,
                                            elevation: 2,
                                            style: TextStyle(fontSize: 15.5,color: Color.fromARGB(255, 0, 0, 0)),
                                            items: <String>['type 1', 'type 2', 'type 3'].map((String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                            onChanged: (_) {
                                              setState(() {
                                                _pensionType = _!;
                                              });
                                            }
                                          ),
                                        ),
                                      )
                                      ),
                                      
                                    ],
                                  ),
                                  ),
                                ),
                            ]
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: double.infinity,
                          height: 80,
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Adhar Number', style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w500))),
                              SizedBox(height: 10,),

                              Container(height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:  BorderRadius.circular(5),
                                  border: Border.all(color: Colors.black.withOpacity(0.2), width: 1)
                                ),
                              child: TextField(
                                maxLength: 42,
                                readOnly: false,
                                controller: _adharController,
                                style: TextStyle(fontSize: 15.5,color: Color.fromARGB(255, 0, 0, 0)),
                                onTap: () async {

                                },
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(fontSize: 15,color: Color(0xFFBFBFBF)),
                                  hintText: '#### #### ####',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(left: 20,top: 7,bottom: 15),
                                  counterText: '',
                                ),
                              ),
                              ),

                              
                              
                            ],
                          ),
                          ),

                          Padding(
                                padding: const EdgeInsets.only(top: 25,left: 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Container(width: 25,height: 25, color: Colors.transparent,
                                      child: Checkbox(
                                              shape:RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(4),
                                                  side: BorderSide(color: Colors.black54)
                                                ),
                                              checkColor: Colors.transparent,
                                              value: _accpeted,
                                              activeColor: Colors.black,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  _accpeted = value!;
                                                });
                                              },
                                            ),
                                      ),
                                    ),
                                    Material(
                                      color: Colors.white,
                                      child: InkWell(
                                        onTap: () {
                                          
                                        },
                                        child: Column(
                                          children: [
                                            SizedBox(height: 10,),
                                            Text('I hereby declare that the information ',
                                                style: TextStyle(
                                                  fontSize: 14,fontWeight: FontWeight.normal, color: Color.fromARGB(255, 0, 0, 0)),),

                                            Text('provided is true and correct',
                                                style: TextStyle(
                                                  fontSize: 14,fontWeight: FontWeight.normal, color: Color.fromARGB(255, 0, 0, 0)),),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
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
                          //move to another page
                          
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
                          if(_nameController.text.isNotEmpty)
                          {
                            globals.name = _nameController.text;
                          }
                          if(_mobileController.text.isNotEmpty)
                          {
                            globals.mobile = _mobileController.text;
                          }
                          if(_addressController.text.isNotEmpty)
                          {
                            globals.address = _addressController.text;
                          }
                          if(_dobController.text.isNotEmpty)
                          {
                            globals.dob = _dobController.text;
                          }
                          if(_adharController.text.isNotEmpty)
                          {
                            globals.adhar = _adharController.text;
                          }
                          if(_pensionType != null)
                          {
                            globals.type = _pensionType;
                          }

                          Navigator.push(context, MaterialPageRoute(builder: (context) => PreviewPage()));
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
                                      left: 55,
                                      right: 55,
                                      top: 23,
                                      bottom: 23
                                    ),
                                    child: const Text(
                                      'NEXT',
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