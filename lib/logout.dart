import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LogoutScreen extends StatefulWidget {
  const LogoutScreen({super.key});
  static const String screenRoute="logoutScreen";
  @override
  State<LogoutScreen> createState() => _LogoutScreenState();
}

class _LogoutScreenState extends State<LogoutScreen> {
  final user=FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(" Nice to meet you"
                ,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),),
              SizedBox(height: 30,),
              Text(user!.email!,
                style: TextStyle(
                  fontSize: 25,),
              ),
              const SizedBox(height: 300,),

              MaterialButton(onPressed: (){
                FirebaseAuth.instance.signOut();
                Navigator.of(context).pushNamed("introScreen");
              },
                color: Colors.green,
                child: Text("logout"),
              ),
            ],
          )),
    );
  }
}
