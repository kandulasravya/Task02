import 'package:flutter/material.dart';
import 'Home.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);
  static final String id ='signin';
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey=GlobalKey<FormState>();
  late String _email,_password;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  _submit(){
    if(_formKey.currentState!.validate()){
      _formKey.currentState!.save();
      print(_email);
      print(_password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Instagram',
              style :TextStyle(fontFamily:'Billabong',fontSize: 50.0),

            ),
            Form(key: _formKey,
              child:Column(mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:30.0,vertical: 10.0),
                    child: TextFormField(controller: nameController,
                      decoration:  InputDecoration(border: OutlineInputBorder(),
                          labelText: 'Username'),


                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:30.0,vertical: 10.0),
                    child: TextField(controller: passwordController,
                      decoration:  InputDecoration(border: OutlineInputBorder(),
                          labelText: 'Password'),
                      obscureText: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:30.0,vertical: 10.0),
                    child: TextField(controller: passwordController,
                      decoration:  InputDecoration(border: OutlineInputBorder(),
                          labelText: 'Confirm Password'),
                      obscureText: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:30.0,vertical: 10.0),
                    child: TextField(controller: passwordController,
                      decoration:  InputDecoration(border: OutlineInputBorder(),
                          labelText: 'Password'),
                      obscureText: true,
                    ),
                  ),



                  SizedBox(height:20.0),
                  Container(
                    width: 250.0,
                    child: FlatButton(onPressed:() =>Navigator.pushNamed(context, Home.id),
                      color:Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 10.0),
                      child: Text('Sign in',
                        style:TextStyle(color: Colors.white,fontSize: 18.0),
                      ),
                    ),
                  ),
                ],
              ) ,
            ),
          ],
        ),
      ),
    );
  }
}
