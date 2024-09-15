import 'package:flutter/material.dart';

class items extends StatelessWidget{
  const items({super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.image,


  });
  final String name;
  final String message;
  final String time;
  final String image;





  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(name, style: TextStyle(fontSize: 16)),
                    SizedBox(height: 5),
                    Text(message, style: TextStyle(fontSize: 16)),
                    SizedBox(height: 5),
                    Text(time, style: TextStyle(fontSize: 14)),
                  ],
                ),
              ),
            ],
          ),
        ),
]
    );

  }
}
