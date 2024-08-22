import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Container(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Image.asset(
                    'IMAGE/1.jpg',
                    height: 250.0,
                    width: 160.0,
                  ),
                ),
                Spacer(flex:1),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Image.asset(
                    'IMAGE/6.jpg',
                    height: 250.0,
                    width: 160.0,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40.0),
                  child: Text(
                    'Kiddies Learn',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'IndieFlower',
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0,),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Start');
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green[500],
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(color: Colors.black),
                ),
                  fixedSize: Size(100.0, 40.0),
                ),
                child: Text(
                  'Start',
                  style: TextStyle(
                    fontFamily: 'IndieFlower',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/About');
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.purple[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Colors.black),
                  ),
                  fixedSize: Size(100.0, 40.0),
                ),
                child: Text(
                  'About',
                  style: TextStyle(
                    fontFamily: 'IndieFlower',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Contact');
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue[400],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Colors.black),
                  ),
                  fixedSize: Size(100.0, 40.0),
                ),
                child: Text(
                  'Contact',
                  style: TextStyle(
                    fontFamily: 'IndieFlower',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Stats');
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red[400],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Colors.black),
                  ),
                  fixedSize: Size(100.0, 40.0),
                ),
                child: Text(
                  'Stats',
                  style: TextStyle(
                    fontFamily: 'IndieFlower',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Image.asset(
                    'IMAGE/0.jpg',
                    height: 250.0,
                    width: 160.0,
                  ),
                ),
                Spacer(flex: 1,),
                Expanded(
                  child: Image.asset(
                    'IMAGE/Logos.jpg',
                    height: 250.0,
                    width: 160.0,
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