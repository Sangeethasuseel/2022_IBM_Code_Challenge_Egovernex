import 'package:flutter/material.dart';
import 'package:egovernex/Components/textbox_button.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _firstname = TextEditingController();
  final TextEditingController _lastname = TextEditingController();
  final TextEditingController _aadharno = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _age = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  left: 80,
                  child: Image.asset(
                    'assets/images/banner_governex.jpg',
                    width: MediaQuery.of(context).size.width,
                    height: 180,
                  )),
              ListView(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 20),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Registration",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26.0,
                                    ),
                                  ),
                                  Text(
                                    "Start  your \nbrand new  account! ",
                                    style: TextStyle(
                                      color: Colors.black87,
//                                  fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Center(
                            child: Text(
                              "EGOVERNEX",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87,
                                  fontSize: 22,
                                  letterSpacing: 2),
                            ),
                          ),
                        ),
                        TextBox(
                          textInputType: TextInputType.name,
                          hint: "First Name",
                          controller: _firstname,
                          fieldName: "firstName",
                        ),
                        TextBox(
                          textInputType: TextInputType.name,
                          hint: "Last Name",
                          controller: _lastname,
                          fieldName: "lastName",
                        ),
                        TextBox(
                          textInputType: TextInputType.emailAddress,
                          hint: "Official Email",
                          controller: _emailController,
                          fieldName: "email",
                        ),
                        TextBox(
                          textInputType: TextInputType.number,
                          hint: "Aadhar Number",
                          controller: _aadharno,
                          fieldName: "aadhar",
                        ),
                        TextBox(
                          textInputType: TextInputType.number,
                          hint: "Age",
                          controller: _age,
                          fieldName: "age",
                        ),
                        TextBox(
                          textInputType: TextInputType.number,
                          hint: "Phone Number",
                          controller: _phone,
                          fieldName: "phone",
                        ),
                        TextBox(
                          textInputType: TextInputType.visiblePassword,
                          hint: "Password",
                          controller: _passwordController,
                          fieldName: "password",
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.deepOrange),
                            ),
                            child: const Text('Sign Up'),
                            onPressed: () async {}),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
