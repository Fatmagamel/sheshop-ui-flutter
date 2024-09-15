import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/tours_screen.dart';


class DepartScreen extends StatelessWidget {
  DepartScreen({super.key});
  static const String screenRoute = "departScreen";
  bool isCan=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 0,
          title: const Row(
            children: [
              CircleAvatar(
                maxRadius: 24,
                //radius: 25 ,
                backgroundImage:  AssetImage("assests/logo.jpg")
              ),
              SizedBox(
                width: 70,
              ),
              Text(
                "Categories",
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),

            ],
          ),
          actions:[PopupMenuButton<int>(
            onSelected: (item)=> onSelected(context,item),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 0,
                child: Text("Developers"),),
              PopupMenuItem(
                value: 1,
                child: Text("About"),),
              PopupMenuDivider(),
              PopupMenuItem(
                value: 2,
                child: Row(
                  children: [
                    Icon(Icons.login_outlined,color: Colors.black,),
                    SizedBox(width: 5,),
                    Text("Logout",textAlign: TextAlign.left,),
                  ],
                ),),
            ],
          ),




          ]
      ),
      body:Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(

                      child: Container(

                        child:  Column(

                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [




                            Expanded(
                              child: Container(
                                width: double.infinity,
                                color: Colors.white,
                                child: Center(
                                  child:  MaterialButton(onPressed: (){
                                    // FirebaseAuth.instance.signInWithEmailAndPassword(email: AutofillHints.email, password: AutofillHints.password);
                                    Navigator.of(context).pushNamed("beauty");
                                  },

                                    color: Colors.blueGrey,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Image(image: AssetImage("assests/beauty.jpg"),height: 160,
                                            width: 250,
                                            fit: BoxFit.fill,
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              color: Colors.blueGrey,
                                              child: Center(
                                                child: Text("beauty",style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),),
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),

                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:isCan ? Colors.blue: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(

                      child: Container(

                        child:  Column(

                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [




                            Expanded(
                              child: Container(
                                width: double.infinity,
                                color: Colors.blueGrey,
                                child: Center(
                                  child:  MaterialButton(onPressed: (){
                                    // FirebaseAuth.instance.signInWithEmailAndPassword(email: AutofillHints.email, password: AutofillHints.password);
                                    Navigator.of(context).pushNamed("hejab");
                                  },

                                    color: Colors.blueGrey,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Image(image: AssetImage("assests/hejab.jpg"),height: 160,
                                            width: 200,
                                            fit: BoxFit.fill,
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              color: Colors.blueGrey,
                                              child: Center(
                                                child: Text("hejab",style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),),
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),

                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:isCan ? Colors.blue: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(

                      child: Container(

                        child:  Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                color: Colors.blueGrey,
                                child: Center(
                                  child:  MaterialButton(onPressed: (){
                                    // FirebaseAuth.instance.signInWithEmailAndPassword(email: AutofillHints.email, password: AutofillHints.password);
                                    Navigator.of(context).pushNamed("modest wear");
                                  },

                                    color: Colors.blueGrey,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Image(image: AssetImage("assests/madest wear.jpg"),height: 160,
                                            width: 200,
                                            fit: BoxFit.cover,
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              color: Colors.blueGrey,
                                              child: Center(
                                                child: Text("Modest Wear",style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),),
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),

                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:isCan ? Colors.blue: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(

                      child: Container(

                        child:  Column(

                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [




                            Expanded(
                              child: Container(
                                width: double.infinity,
                                color: Colors.blueGrey,
                                child: Center(
                                  child:  MaterialButton(onPressed: (){
                                    // FirebaseAuth.instance.signInWithEmailAndPassword(email: AutofillHints.email, password: AutofillHints.password);
                                    Navigator.of(context).pushNamed("SkinCare");
                                  },

                                    color: Colors.blueGrey,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Image(image: AssetImage("assests/skincare.jpg"),height: 160,
                                            width: 200,
                                            fit: BoxFit.fill,
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              color: Colors.blueGrey,
                                              child: Center(
                                                child: Text("Skin Care",style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),),
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),

                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:isCan ? Colors.blue: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),



              ],
            ),),
        ],
      ),


    );
  }
}