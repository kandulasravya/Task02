import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class Profile extends StatefulWidget {




  _Profile createState() => _Profile();
}

class _Profile extends State<Profile>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: Column(

    children: [Row(
      children: [
        Container(
          width: 100.0,
          height:100.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image:NetworkImage("https://images.unsplash.com/photo-1542438408-abb260104ef3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mjh8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
              )
          ),
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
        ),
        Text("    12\n"
            "  Posts ", style:TextStyle(
          fontSize: 20,
        )
            ),
        Text("    230\n"
            "  Followers  ", style:TextStyle(
          fontSize: 20,
        )
        ),
        Text("     500\n"
            "  Following  ", style:TextStyle(
          fontSize: 20,
        )
        ),
      ],
    ),

    Container(


      alignment: Alignment.topLeft,

      child: Text("Jacob West\n"
      "Everything is designed",
      style:TextStyle(
        fontSize: 20,
      )
      ),
    ),
      RaisedButton(onPressed: (){},
          color: Colors.white,
          child: Text("Edit Profile",
          style:TextStyle(
            color: Colors.blue,

          ))),
    GridView.count(
      scrollDirection:Axis.vertical,
    crossAxisCount: 3,
    crossAxisSpacing: 2,
    mainAxisSpacing: 2,
    shrinkWrap: true,
    children: [
    Container( width: 100.0,
    height:100.0,
    decoration: BoxDecoration(
    shape: BoxShape.rectangle,
    image: DecorationImage(
    fit: BoxFit.fill,
         image:NetworkImage("https://images.unsplash.com/photo-1527377667-83c6c76f963f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWRkcmVzc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),),),
    ),
      Container( width: 100.0,
        height:100.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image:NetworkImage("https://images.unsplash.com/photo-1527377667-83c6c76f963f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWRkcmVzc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),),),
      ),
      Container( width: 100.0,
        height:100.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image:NetworkImage("https://images.unsplash.com/photo-1527377667-83c6c76f963f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWRkcmVzc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),),),
      ),
      Container( width: 100.0,
        height:100.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image:NetworkImage("https://images.unsplash.com/photo-1527377667-83c6c76f963f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWRkcmVzc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),),),
      ),
      Container( width: 100.0,
        height:100.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image:NetworkImage("https://images.unsplash.com/photo-1527377667-83c6c76f963f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWRkcmVzc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),),),
      ),
      Container( width: 100.0,
        height:100.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image:NetworkImage("https://images.unsplash.com/photo-1527377667-83c6c76f963f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWRkcmVzc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),),),
      ),
      Container( width: 100.0,
        height:100.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image:NetworkImage("https://images.unsplash.com/photo-1527377667-83c6c76f963f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWRkcmVzc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),),),
      ),
      Container( width: 100.0,
        height:100.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image:NetworkImage("https://images.unsplash.com/photo-1527377667-83c6c76f963f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWRkcmVzc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),),),
      ),
      Container( width: 100.0,
        height:100.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image:NetworkImage("https://images.unsplash.com/photo-1527377667-83c6c76f963f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWRkcmVzc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),),),
      ),
      Container( width: 100.0,
        height:100.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image:NetworkImage("https://images.unsplash.com/photo-1527377667-83c6c76f963f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWRkcmVzc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),),),
      ),
      Container( width: 100.0,
        height:100.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image:NetworkImage("https://images.unsplash.com/photo-1527377667-83c6c76f963f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWRkcmVzc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),),),
      ),
      Container( width: 100.0,
        height:100.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image:NetworkImage("https://images.unsplash.com/photo-1527377667-83c6c76f963f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWRkcmVzc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),),),
      ),

    ],
    ),
   ], ),
      );


 }
}