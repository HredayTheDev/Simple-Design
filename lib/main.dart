import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text("Ninja Id Card"),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.grey[850],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),

          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Center(
                child: CircleAvatar(backgroundImage: AssetImage('assets/add3.jpg'),
                radius: 40,
                
                
                ),
              ),
              Divider(height: 90,),
              Text(
                "NAME",
                style: TextStyle(
                    letterSpacing: 2, color: Colors.white, fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Hreday Sagar",
                style: TextStyle(
                    letterSpacing: 2,
                    color: Colors.yellow,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "NINJA LEVEL",
                style: TextStyle(
                    letterSpacing: 2, color: Colors.white, fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "9",
                style: TextStyle(
                    letterSpacing: 2,
                    color: Colors.yellow,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "hredaysagar@gmail.com",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
