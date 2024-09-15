import 'package:flutter/material.dart';

class DevelopersScreen extends StatefulWidget {
  const DevelopersScreen({super.key});

  @override
  State<DevelopersScreen> createState() => _DevelopersScreenState();
}

class _DevelopersScreenState extends State<DevelopersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Developers",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold,),),
        elevation: 0,
        centerTitle: true,

      ),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Container(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 15,),

                Row(
                  children: [
                    const Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [

                        CircleAvatar(

                          radius: 50.0,
                          backgroundImage: AssetImage("assests/photo.jpg"),

                        ),


                      ],
                    ),

                    const SizedBox(
                      width: 15,

                    ),

                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,

                        children: [
                          const Text("Fatma Al_zahraa Gamel", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),

                        ],
                      ),
                    ),


                  ],

                ),
             ]
            )
          ),
        ),
      ),
    );
  }
}



