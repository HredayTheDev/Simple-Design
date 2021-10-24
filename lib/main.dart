import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: AppBar(
            title: Text("Ninja Id Card"),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.grey[850],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                ninjaLevel += 1;
              });
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.grey[800],
          ),
          body: Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/add3.jpg'),
                    radius: 40,
                  ),
                ),
                Divider(
                  height: 90,
                ),
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
                  "CURRENT NINJA LEVEL SCORE",
                  style: TextStyle(
                      letterSpacing: 2, color: Colors.white, fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "$ninjaLevel",
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
      ),
    );
  }
}
