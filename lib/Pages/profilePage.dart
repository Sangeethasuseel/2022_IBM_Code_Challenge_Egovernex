import 'package:egovernex/Components/textbox_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget{

  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: ElevatedButton.icon(onPressed: () {},
            icon: Icon(Icons.arrow_back),
            label: Text('')),
        backgroundColor: Colors.blueAccent,
        title: Text('User Profile'),
      ),

      body: Column(

   children: [

     SizedBox(
       height: 50,
     ),


     Row(
        children: [
          SizedBox(
            width: 30.0,
          ),

          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(
                ''
            ),
          ),
          SizedBox(
            width: 30.0,
          ),

          Text('Username',
              style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black87,
              fontSize: 22,)),],
      ),

     SizedBox(
       height: 50.0,
     ),

     Container(
       width: 300,
       height: 450,
       child: Card (
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(40), // if you need this
    side: BorderSide(
    color: Colors.grey.withOpacity(0.2),
    width: 3,),),

       elevation: 20,
       child: Column(
       children: [
     Row(
       children: [
         SizedBox(
           height: 100.0,
         ),
         const Spacer(),
         Expanded(
           child: Text('Name'),
         ),
         Expanded(
           child: Text('ABC'),
         ),
       ],),

         Row(
           children: [
             SizedBox(
               height: 10.0,
             ),
             const Spacer(),
             Expanded(
               child: Text('Gender'),
             ),
             Expanded(
               child: Text('Male'),
             ),
           ],),

         Row(
           children: [
             SizedBox(
               height: 80.0,
             ),
             const Spacer(),
             Expanded(
               child: Text('DOB'),
             ),
             Expanded(
               child: Text('24-03-2001'),
             ),
           ],),

         Row(
           children: [
             SizedBox(
               height: 60.0,
             ),
             const Spacer(),
             Expanded(
               child: Text('Contact No:'),
             ),
             Expanded(
               child: Text('7736926569'),
             ),
           ],),

         Row(
           children: [
             SizedBox(
               height: 60.0,
             ),
             const Spacer(),
             Expanded(
               child: Text('Email'),
             ),
             Expanded(
               child: Text('abc356@gmail.com'),
             ),
           ],),

         Row(
           children: [
             SizedBox(
               height: 60.0,
             ),
             const Spacer(),
             Expanded(
               child: Text('Address'),
             ),
             Expanded(
               child: Text('xyzabc'),
             ),
           ],),

         Row(children: [
           SizedBox(
             height: 60.0,
           ),
            Container(
              alignment: Alignment.center,
            width: 350,
            child: RaisedButton(
             onPressed: () {},
             color: Colors.blueAccent, 
             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10)),
             child: Text("Update Profile"),
           ),),
         ],)

     ],),
      ),),


   ],),

    );
  }
}