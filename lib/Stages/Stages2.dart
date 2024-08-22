import 'package:flutter/material.dart';
import 'package:math_app/Operators/Addition2.dart';
import 'package:math_app/Operators/Multiplication2.dart';
import 'package:math_app/Operators/Random2.dart';
import 'package:math_app/Operators/Subtraction2.dart';

void main(){
  runApp(MaterialApp(
    home: Stages2(),
  ));
}

class Stages2 extends StatefulWidget {

  @override
  _Stages2State createState() => _Stages2State();
}

class _Stages2State extends State<Stages2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stages'),
        centerTitle: true,
        backgroundColor: Colors.green[500],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('IMAGE/Stages.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Header(),
            Add(),
            Sub(),
            Multi(),
            Rand(),
          ],
        ),
      ),
    );
  }
}

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'OPERATORS:',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'IndieFlower',
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Ink.image(
                image: AssetImage(
                  'IMAGE/Addition.jpg',
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Addition2()));
                  },
                ),
                height: 200,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Text(
            'Addition',
            style: TextStyle(
              fontFamily: 'IndieFlower',
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}

class Sub extends StatefulWidget {
  const Sub({Key? key}) : super(key: key);

  @override
  _SubState createState() => _SubState();
}

class _SubState extends State<Sub> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Ink.image(
                image: AssetImage(
                  'IMAGE/Subtraction.jpg',
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Subtraction2()));
                  },
                ),
                height: 200,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Text(
            'Subtraction',
            style: TextStyle(
              fontFamily: 'IndieFlower',
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}

class Multi extends StatefulWidget {
  const Multi({Key? key}) : super(key: key);

  @override
  _MultiState createState() => _MultiState();
}

class _MultiState extends State<Multi> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Ink.image(
                image: AssetImage(
                  'IMAGE/Multiplication.jpg',
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Multiplication2()));
                  },
                ),
                height: 200,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Text(
            'Multiplication',
            style: TextStyle(
              fontFamily: 'IndieFlower',
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}

class Rand extends StatefulWidget {
  const Rand({Key? key}) : super(key: key);

  @override
  _RandState createState() => _RandState();
}

class _RandState extends State<Rand> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Ink.image(
                image: AssetImage(
                  'IMAGE/Shuffle.jpg',
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Random2()));
                  },
                ),
                height: 200,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Text(
            'Random',
            style: TextStyle(
              fontFamily: 'IndieFlower',
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}