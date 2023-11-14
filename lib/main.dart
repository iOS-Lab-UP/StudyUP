import 'package:flutter/material.dart';
import 'Menu.dart'; // Importing the second screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Navigation Example',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final TextStyle defaultTextStyle = TextStyle(
    fontSize: 20.0,
    color: Colors.black,
    fontFamily: "Poppins",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container (
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/SmartUP-canvas.png'), // background image asset path
            fit: BoxFit.cover,
          ),
        ),
      child: Column(
        children: [
          // logo
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Image.asset(
              'assets/images/SmartUP-logo.png', // image asset path
              width: 300.0,
              height: 300.0,
            ),
          ),

          // button
          Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: 85.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Menu()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Colors.black),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: DefaultTextStyle(
                      style: defaultTextStyle,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.image,
                            size: 24.0,
                          ),
                          SizedBox(width: 40.0),
                          Text('Continue with Google'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }
}
