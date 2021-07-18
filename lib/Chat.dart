import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);
  static final String id ='chat';
  @override
  _ChatState createState() => _ChatState();
}


class _ChatState extends State<Chat> {
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
      appBar: AppBar(title:Text('Chat',
        style: TextStyle(
          color: Colors.black,
        ),
      ),


        centerTitle: true,
        backgroundColor: Colors.white,


      ),
      body:

      Column(
        children: [TextField(decoration: InputDecoration(border:OutlineInputBorder(),
        labelText: 'Search',
        icon:Icon(Icons.search) ),),
          BodyLayout(),
          Row(
            children: [
              IconButton(icon:
              Icon(Icons.camera_alt), onPressed: () {  },),
              IconButton(icon:
              Icon(Icons.backspace), onPressed: ()=> Navigator.pushNamed(context, Home.id),),
            ],
          ),
        ],
      ),









    );
  }
}


class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return _myListView(context);
  }
}
Widget _myListView(BuildContext context) {

  // backing data
  final chatNames = ['Ramya', 'Kavya', 'Navya', 'Lasya',
    'Naveen', 'Praveen', 'Srikanth', 'Dhrithi', 'Anil'];


  return ListView.builder(

    itemCount: chatNames.length,
shrinkWrap: true,
    scrollDirection: Axis.vertical,
    itemBuilder: (context, index) {
      return ListTile(
          leading: CircleAvatar(
          backgroundImage:NetworkImage('https://images.unsplash.com/photo-1567878673942-be055fed5d30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'),
      ),
      title: Text(chatNames[index]),
      subtitle: Text('Messages are end to end encrypted'),
      trailing: Icon(Icons.camera_alt),
      );
    },
  );}




