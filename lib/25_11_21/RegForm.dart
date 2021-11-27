import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class RegForm extends StatefulWidget {
  const RegForm({Key? key}) : super(key: key);

  @override
  _RegFormState createState() => _RegFormState();
}

class _RegFormState extends State<RegForm> {
  int _value = 1;
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var addressController = TextEditingController();
  var passwordController = TextEditingController();

  var name, email, phone, address, password;

  var formKey= GlobalKey<FormState>();

  _handleSignUpData(){
    if(formKey.currentState!.validate()){
      formKey.currentState!.save();

      print("Name is : ${this.name}");
      print("Email is : ${this.email}");
      print("Phone is : ${this.phone}");
      print("Address is : ${this.address}");
      print("Password is : ${this.password}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Your App"),
          centerTitle: true,
          backgroundColor: Colors.indigoAccent[100],
          elevation: 5,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Sign Up Page",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Form(
                    key: formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          keyboardType: TextInputType.name,
                          controller: nameController,
                          decoration: InputDecoration(
                            labelText: "Enter Your Name",
                          ),
                          validator: (val){
                            if (val!.isEmpty){
                              return ("Enter Your Name Firstx");
                            }
                          },
                            onSaved: (value){
                              this.name=value;
                            }
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          decoration: InputDecoration(
                            labelText: "Enter Your Email",
                          ),
                          validator: (val){
                            if (val!.isEmpty){
                              return ("Enter Your Email Firstx");
                            }
                          },
                          onSaved: (value){
                            this.email=value;
                          },
                        ),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          controller: phoneController,
                          decoration: InputDecoration(
                            labelText: "Enter Your Phone",
                          ),
                          validator: (val){
                            if (val!.isEmpty){
                              return ("Enter Your Phone Firstx");
                            }
                          },
                            onSaved: (value){
                              this.phone=value;
                            }
                        ),
                        TextFormField(
                          keyboardType: TextInputType.name,
                          controller: addressController,
                          decoration: InputDecoration(
                            labelText: "Enter Your Address",
                          ),
                          validator: (val){
                            if (val!.isEmpty){
                              return ("Enter Your Adsress Firstx");
                            }
                          },
                            onSaved: (value){
                              this.address=value;
                            }
                        ),
                        TextFormField(
                          obscureText: true,
                          controller: passwordController,
                          decoration: InputDecoration(
                            labelText: "Enter Your Password",
                          ),
                          validator: (val){
                            if (val!.isEmpty){
                              return ("Enter Your Password Firstx");
                            }
                          },
                            onSaved: (value){
                              this.password=value;
                            }
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Gender : ",
                              style: TextStyle(fontSize: 18),
                            ),
                            Row(
                              children: <Widget>[
                                Radio(
                                    value: 1,
                                    groupValue: _value,
                                    onChanged: (valuex) {
                                      setState(() {
                                        valuex = _value;
                                      });
                                    }),
                                Text(
                                  "Male",
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Radio(
                                    value: "Femalee",
                                    groupValue: _value,
                                    onChanged: (valuex) {
                                      setState(() {
                                        valuex = _value;
                                      });
                                    }),
                                Text(
                                  "Female",
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        DropdownButtonFormField(
                          hint: Text("Your Marital Status"),
                          onChanged: (value){
                            setState(() {
                              print(value);
                            });
                          },
                          items:[
                            DropdownMenuItem(child: Text("Married"),value: "married",),
                            DropdownMenuItem(child: Text("Unmarried"),value: "unmarried",),
                          ],),
                        SizedBox(
                          height: 20,
                        ),
                        RaisedButton(onPressed: _handleSignUpData,child: Text("Submit"),elevation: 10,),
                        SizedBox(height: 20,),
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
