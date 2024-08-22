import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
  runApp(MaterialApp(
    home: Contact(),
  ));
}

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {

  Future<void> customLaunch(command) async{
    if (await canLaunch(command)){
      await launch(command);
    }
    else{
      print('Unable to launch $command');
    }
  }

  _launchEmail()async{
    launch('mailto: dudufaga2016@gmail.com');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kiddies learn'),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('IMAGE/Clouds.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 150.0),
              child: Text(
                'If you have any complains, questions or simply giving a feedback please use these methods to contact the developer:',
                style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 50.0,
              width: 130.0,
              margin: EdgeInsets.only(top: 30.0),
               child: TextButton.icon(
                 onPressed: () {
                   customLaunch('tel: +2349077770006');
                   HapticFeedback.heavyImpact();
                 },
                 icon: Icon(
                   Icons.phone,
                   color: Colors.white,
                   size: 30.0,
                 ),
                 label: Text(
                   'Phone',
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 20.0,
                   ),
                 ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(color: Colors.black,),
                ),
              ),
            ),
            ),
            Container(
              width: 130.0,
              margin: EdgeInsets.only(top: 20.0),
              child: TextButton.icon(
                onPressed: () {
                  customLaunch('sms: +2349077770006');
                  HapticFeedback.heavyImpact();
                  },
                icon: Icon(
                  Icons.add_comment,
                  color: Colors.white,
                  size: 30.0,
                ),
                label: Text(
                    'SMS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Colors.black,),
              ),
            ),
            ),
          ),
          Container(
            width: 130.0,
            margin: EdgeInsets.only(top: 20.0,bottom: 50.0),
            child: TextButton.icon(
              onPressed: () {
                _launchEmail();
                HapticFeedback.heavyImpact();
              },
              icon: Icon(
                Icons.mail,
                color: Colors.white,
                size: 30.0,
              ),
              label: Text(
                  'Email',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(color: Colors.black,),
            ),
          ),
            ),
          ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Image.asset('IMAGE/Contact.jpg'),
                ),
              ],
            ),
      ],
      ),
      ),
    );
  }
}
