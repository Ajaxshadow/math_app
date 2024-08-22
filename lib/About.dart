import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: About(),
  ));
}

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);


  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: Text('Kiddies learn'),
        centerTitle: true,
        backgroundColor: Colors.purple[300],
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Image.asset(
                    'IMAGE/BeeRight.jpg',
                    height: 220,
                    width: 160,
                  ),
                ),
                Spacer(flex: 1,),
                Expanded(
                    child: Image.asset(
                        'IMAGE/BeeLeft.jpg',
                      color: Colors.purple,
                      height: 220,
                      width: 160,
                    ),
                ),
              ],
            ),
            Column(
              children: [
                Center(
                  child: Text(
                    'About',
                    style: TextStyle(
                      fontFamily: 'IndieFlower',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Text(
                'Welcome to "Kiddies learn", this application is a work of my final year project as a student of Baze university Abuja. this will teach you the basic concepts of mathematics such as Operators like Addition, Subtraction, Multiplication and Division and remember to have fun with your experience. Adequate and frequent feedback will be required, Enjoy!',
                style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: Image.asset(
                        'IMAGE/PaperRight.jpg',
                      color: Colors.purple,
                      height: 220,
                      width: 160,
                    ),
                ),
                Spacer(flex: 1,),
                Expanded(
                  child: Image.asset(
                      'IMAGE/PaperLeft.jpg',
                    height: 220,
                    width: 160,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
