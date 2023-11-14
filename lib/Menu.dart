import 'package:flutter/material.dart';
import "Classes.dart";
import "Exams.dart";
import "Events.dart";
import "Notion.dart";
import "Profile.dart";
import "Scores.dart";

void main() {
  runApp(
      MaterialApp(
    home: Menu(),
  ));
}

class Menu extends StatelessWidget {
  Menu({Key? key});

  // Define a list of RGB colors for the buttons
  final List<Color> buttonColors = [
    Color.fromRGBO(91, 201, 228, 1),
    Color.fromRGBO(27, 193, 165, 1),
    Color.fromRGBO(78, 187, 251, 1),
    Color.fromRGBO(149, 216, 212, 1),
    Color.fromRGBO(217, 198, 251, 1),
    Color.fromRGBO(126, 147, 251, 1),
  ];

  final List<String> buttonImages = [
    'assets/images/SmartUP-profileIcon.png',
    'assets/images/SmartUP-classesIcon.png',
    'assets/images/SmartUP-scoresIcon.png',
    'assets/images/SmartUP-examsIcon.png',
    'assets/images/SmartUP-eventsIcon.png',
    'assets/images/SmartUP-notionIcon.png',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: GridView.count(
        crossAxisCount: 2, // 2 buttons per row
        children: <Widget>[
          _buildRectangleButton(context, "Mi Perfil", Profile(), buttonColors[0], buttonImages[0]),
          _buildRectangleButton(context, "Clases", Classes(), buttonColors[1], buttonImages[1]),
          _buildRectangleButton(context, "Calificaciones", Scores(), buttonColors[2], buttonImages[2]),
          _buildRectangleButton(context, "Exámenes", Exams(), buttonColors[3], buttonImages[3]),
          _buildRectangleButton(context, "Eventos", Events(), buttonColors[4], buttonImages[4]),
          _buildRectangleButton(context, "Notion", Notion(), buttonColors[5], buttonImages[5]),
        ],
      ),
    );
  }

  Widget _buildRectangleButton(BuildContext context, String text, Widget destination, Color buttonColor, String imagePath) {
    return Card(
      margin: EdgeInsets.all(20.0),
      clipBehavior: Clip.antiAlias, // Clip content to make it rounded
      child: InkWell(
        onTap: () {
          // Navigate to the respective view when the button is tapped
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => destination,
          ));
        },
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(16.0),
          // Apply the desired border and background color to the button
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
          children: [
          Image.asset(
            imagePath,
            height: 80, // Adjust the height of the image
          ),
          SizedBox(height: 50.0), // Add spacing between the image and text
          Text(
            text,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold, // Make the text bold
              color: Colors.white, // Make the text white
            ),
          ),
        ],
        ),
      ),
      ),
    );
  }
}
