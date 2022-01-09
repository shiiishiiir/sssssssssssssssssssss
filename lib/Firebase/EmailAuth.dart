import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sssssssssssssssssssss/Provider/GoogleSignInProvider.dart';

class EmailAuth extends StatefulWidget {
  const EmailAuth({Key? key}) : super(key: key);

  @override
  _EmailAuthState createState() => _EmailAuthState();
}

class _EmailAuthState extends State<EmailAuth> {
  final _formKey = GlobalKey<FormState>();

  bool isLogIn = false;

  String email = "";
  String password = "";
  String username = "";

  _handleSignUpData() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      isLogIn ? signUp(email, password) : signIn(email, password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Email/Pass Auth"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      isLogIn
                          ? TextFormField(
                              key: ValueKey("Username"),
                              decoration: InputDecoration(
                                hintText: "Enter Your Username",
                              ),
                              validator: (value) {
                                if (value.toString().length < 3) {
                                  return "Username is Small";
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (value) {
                                setState(() {
                                  username = value!;
                                });
                              },
                            )
                          : Container(),
                      TextFormField(
                        key: ValueKey("Email"),
                        decoration: InputDecoration(
                          hintText: "Enter Your Email",
                        ),
                        validator: (value) {
                          if (!(value.toString().contains("@"))) {
                            return "Invalid Email";
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          setState(() {
                            email = value!;
                          });
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        key: ValueKey("Password"),
                        decoration: InputDecoration(
                          hintText: "Enter Your Password",
                        ),
                        validator: (value) {
                          if (value.toString().length < 6) {
                            return "Password is Small";
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          setState(() {
                            password = value!;
                          });
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: _handleSignUpData,
                          child: isLogIn ? Text("Sign Up") : Text("Log In"),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            isLogIn = !isLogIn;
                          });
                        },
                        child: isLogIn
                            ? Text("Already SignUp? LogIn")
                            : Text("Don't Have an Account? SignUp"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
