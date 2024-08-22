import 'dart:math';

import 'package:flutter/material.dart';
import 'package:math_app/Quiz/AnswerButton.dart';
import 'package:math_app/Quiz/QuizText.dart';

import '../Video1.dart';


void main(){
  runApp(MaterialApp(
    home: Addition3(),
  ));
}

TextEditingController answerController = new TextEditingController();
class Addition3 extends StatefulWidget {
  @override
  _Addition3State createState() => _Addition3State();
}

class _Addition3State extends State<Addition3> {
  List<Icon> _scoreTracker = [];
  int _questionIndex = 0;
  int _totalScore = 0;
  bool answerWasSelected = false;
  bool endOfQuiz = false;
  bool correctAnswerSelected = false;

  void _questionAnswered(bool answerScore) {
    setState(() {
      answerWasSelected = true;
      if (answerScore) {
        _totalScore++;
        correctAnswerSelected = true;
      }
      _scoreTracker.add(
        answerScore
            ? Icon(
          Icons.check,
          color: Colors.green,
        )
            : Icon(
          Icons.clear,
          color: Colors.red,
        ),
      );
      if (_questionIndex + 1 == _questions.length) {
        endOfQuiz = true;
      }
    });
  }

  void _nextQuestion() {
    setState(() {
      _questionIndex++;
      answerWasSelected = false;
      correctAnswerSelected = false;
    });
    if (_questionIndex >= _questions.length) {
      _resetQuiz();
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      _scoreTracker = [];
      endOfQuiz = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Operators',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: (){
              runApp(MaterialApp(home: Video1(),
              ));
            },
            child: Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.circle_notifications_rounded,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  if (_scoreTracker.length == 0)
                    SizedBox(
                      height: 25.0,
                    ),
                  if (_scoreTracker.length > 0) ..._scoreTracker
                ],
              ),
              Container(
                width: double.infinity,
                height: 130.0,
                margin: EdgeInsets.only(bottom: 10.0, left: 30.0, right: 30.0),
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.orange],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    _questions[_questionIndex]['question'].toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              QuizText(
                answerText: '',
                answerController: answerController,
              ),
              ...(_questions[_questionIndex]['answers']
              as List<Map<String, dynamic>>)
                  .map(
                    (answer) => AnswerButton(
                  answerText: '',

                  answerTap: () {
                    if (answerWasSelected) {
                      return;
                    }
                    bool ans = false;
                    if(answer['answerText']==answerController.text){
                      ans = true;
                      print(true);
                    }
                    _questionAnswered(ans);
                  },
                ),

              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 40.0),
                ),
                onPressed: () {
                  if (!answerWasSelected) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                          'Please select an answer before going to the next question'),
                    ));
                    return;
                  }
                  _nextQuestion();
                },
                child: Text(endOfQuiz ? 'Restart Quiz' : 'Next Question'),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  '${_totalScore.toString()}/${_questions.length}',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ),
              if (answerWasSelected && !endOfQuiz)
                Container(
                  height: 100,
                  width: double.infinity,
                  color: correctAnswerSelected ? Colors.green : Colors.red,
                  child: Center(
                    child: Text(
                      correctAnswerSelected
                          ? 'Correct!'
                          : 'Wrong!',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              if (endOfQuiz)
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      _totalScore > 4
                          ? 'Congratulations! Your final score is: $_totalScore'
                          : 'Your final score is: $_totalScore. Better luck next time!',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: _totalScore > 4 ? Colors.green : Colors.red,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
Random random = new Random();
List A=[];
List Q(){
  int x=random.nextInt(10);
  int y=random.nextInt(10);
  int answer1 = x+y;
  String question1String = x.toString()+"+"+y.toString()+"=?";
  A = [question1String,answer1.toString()];
  return A;
}

randomValues(String answer){

  int  i =1;
  List optionAnswer = [];
  // var newList;
  while (i<=3){
    int otherOptions = random.nextInt(10);
    String optionString = otherOptions.toString();
    if(!optionAnswer.contains(otherOptions) && optionString!=answer){
      optionAnswer.add(optionString);
      i++;
      print(optionAnswer);
    }
  }
  print('optionAnswer');
  print(optionAnswer);
  var options =[{'answerText': A[1], 'score': true}];
  print(options);
  //options = newList;
  options.shuffle();
  return options;
}
final _questions =  [
  for(int i=1;i<=10;i++) {
    'question': Q()[0],
    'answers': randomValues(A[1]),
  },
];
