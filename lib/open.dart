import 'package:assignment/login.dart';
import 'package:assignment/signin.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static final String id ='open';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  late String _email, _password;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  _submit() {

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
              style: TextStyle(fontFamily: 'Billabong', fontSize: 50.0),

            ),
            Form(key: _formKey,
              child: Column(mainAxisSize: MainAxisSize.min,
                children: <Widget>[


                  SizedBox(height: 20.0),
                  Container(
                    width: 250.0,

                    child: FlatButton(onPressed: () =>Navigator.pushNamed(context, LoginScreen.id),
                      color: Colors.blue,
                      padding: EdgeInsets.symmetric(
                          horizontal: 80.0, vertical: 10.0),
                      child: Text('Log in',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),

                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: 250.0,
                    child: FlatButton(
                      onPressed: () =>Navigator.pushNamed(context, SignupScreen.id),
                      color: Colors.white,

                      padding: EdgeInsets.symmetric(
                          horizontal: 80.0, vertical: 10.0),
                      child: Text('Sign up',
                        style: TextStyle(color: Colors.blue, fontSize: 18.0),
                      ),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blue)
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}