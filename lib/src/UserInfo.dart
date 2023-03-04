import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final UserName = Container(
      margin: EdgeInsets.only(left: 10),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text("Jack Pression", style: TextStyle(
      fontSize: 24, 
      color: Colors.black87, 
      fontWeight: FontWeight.w500),), Text("Morning time")],
    ));
    final UserData = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [ Container( child: Image.asset('asset/user.png',), height: 40, width: 40,), UserName],
      ),
    );
    final Notification = Container(child: Icon(Icons.notification_add,), 
    margin: EdgeInsets.only(right: 20), 
    padding: EdgeInsets.all(10), 
    decoration: BoxDecoration(color: Colors.grey, 
    borderRadius: BorderRadius.circular(20)
    ),);
    return Container(
      padding: EdgeInsets.only(left: 25, top: 20),
      
      child: Row(children: [UserData, Notification], mainAxisAlignment: MainAxisAlignment.spaceBetween,),
    );
  }
}