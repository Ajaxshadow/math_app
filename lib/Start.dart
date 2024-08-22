import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:math_app/Stages/Stages1.dart';
import 'package:math_app/Stages/Stages2.dart';
import 'package:math_app/Stages/Stages3.dart';
import 'Auth_Factors/MenuItem.dart';
import 'Auth_Factors/MenuItems.dart';
import 'Auth_Factors/UserModel.dart';
import 'Authentication/Login.dart';
import 'Authentication/Register.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: Start(),
  ));
}

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kiddies learn',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green[400],
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: PopupMenuButton<MenuItem>(
              tooltip: 'menu',
              child: Icon(
                Icons.supervisor_account,
                size: 30,
              ),
              onSelected: (item) => onSelected(context, item),
              itemBuilder: (context) =>
              [
                ...MenuItems.items.map(buildItem).toList(),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('IMAGE/Start.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            header(),
            Babies(),
            Younguns(),
            Preschool(),
          ],
        ),
      ),
    );
  }

  PopupMenuItem<MenuItem> buildItem(MenuItem item) =>
      PopupMenuItem(
        value: item,
        child: Row(
          children: [
            Icon(
              item.icon,
              color: Colors.black,
            ),
            Text(item.text),
          ],
        ),
      );

  void onSelected(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.itemRegister:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Register()));
        break;
      case MenuItems.itemLogin:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login()));
        break;
    }
  }

  Widget header() =>
      Text(
        'choose your stage:',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      );
}

class Babies extends StatefulWidget {
  const Babies({Key? key}) : super(key: key);

  @override
  _BabiesState createState() => _BabiesState();
}

class _BabiesState extends State<Babies> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Stages1()));
      },
      child: Card(
          margin: EdgeInsets.only(top: 30),
          shadowColor: Colors.red,
          elevation: 10,
          color: Colors.pink,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '      Age 1-3',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4,),
                Text(
                  'This is the easiest level meant for kindergarteners.',
                  style: TextStyle(
                    fontFamily: 'IndieFlower',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}

class Younguns extends StatefulWidget {
  const Younguns({Key? key}) : super(key: key);

  @override
  _YoungunsState createState() => _YoungunsState();
}

class _YoungunsState extends State<Younguns> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Stages2()));
      },
      child: Card(
          margin: EdgeInsets.only(top: 30),
          shadowColor: Colors.blue,
          elevation: 10,
          color: Colors.lightBlueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '      Age 4-7',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4,),
                Text(
                  "we're making things a little more interesting...",
                  style: TextStyle(
                    fontFamily: 'IndieFlower',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}

class Preschool extends StatefulWidget {
  const Preschool({Key? key}) : super(key: key);

  @override
  _PreschoolState createState() => _PreschoolState();
}

class _PreschoolState extends State<Preschool> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Stages3()));
      },
      child: Card(
        margin: EdgeInsets.only(top: 30),
        shadowColor: Colors.grey,
        elevation: 10,
        color: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '      Age 8-10',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 4,),
              Text(
                'This is above the rest, time to test your skill.',
                style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // the logout function
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Login()));
  }
}