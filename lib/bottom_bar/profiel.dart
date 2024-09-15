import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Api_screen.dart';
import 'package:untitled1/success_stories_model.dart';






class UserModel{

  final int id;
  final String name;
  final String phone;

  UserModel({required this.id,required this.name,required this.phone,});

}

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  static const String screenRoute = "developersScreen";
  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  UserModel user =UserModel(id: 1, name: "gsdk", phone: "12314");
  final mser=FirebaseAuth.instance.currentUser!;
  SuccessStoriesModel? storiesModel;
  bool isLoading=true;

  getData() async
  {
    storiesModel= await ApiProvider().getSuccessStories();
    print(storiesModel?.model![1].title);

    setState(() {
      isLoading=false;
    });
  }

  @override
  void initState()
  {
    getData();
    super.initState();

  }
  @override
  void dispose()
  {
    //TODO: implement dispose
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child:  Column(
            children: [
              CircleAvatar(
                maxRadius: 80,
                //radius: 25 ,
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjA2IU50H3xQP3V1ISbBcM2i2iXUQ69MCwwKxE5VCVFg&s"),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Email: ",style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 30),),
              SizedBox(height: 25,),
              Text(
                mser.email!.toString(),
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 30),

              ),
              SizedBox(height: 25,),
              Text("UID: ",style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 40),),
              SizedBox(height: 25,),
              Text(
                mser.uid!.toString(),
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),

              ),

            ],
          ),
        ),
      ),


    );
  }
}