import 'package:egovernex/Pages/home.dart';
import 'package:egovernex/Pages/registration.dart';
import 'package:flutter/material.dart';
import 'package:egovernex/Components/textbox_button.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                  child: Image.asset(
                'assets/images/banner_governex.jpg',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              )),
              ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 200.0,
                        ),
                        Text('EGOVERNEX',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                                fontSize: 22,
                                letterSpacing: 2)),
                        SizedBox(
                          height: 80.0,
                        ),
                        TextBox(
                          textInputType: TextInputType.emailAddress,
                          hint: "Official Email",
                          controller: _emailController,
                          fieldName: '',
                        ),
                        TextBox(
                          textInputType: TextInputType.visiblePassword,
                          hint: "Password",
                          controller: _passwordController,
                          fieldName: '',
                        ),
                        ElevatedButton(
                            child: const Text(' log In'),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.deepOrange),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
                              );
                            }),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30.0, horizontal: 10.0),
                          child: Center(
                            child: Container(
                                child: Row(
                              children: <Widget>[
                                Text(
                                  "Don't have an account?",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.0,
                                  ),
                                ),
                                FlatButton(
                                    textColor: Colors.deepOrange,
                                    child: Text(
                                      'Sign Up',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Registration(),
                                          ));
                                    })
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                            )),
                          ),
                        ),
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
}
