import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _people =0;
  String _infoText = "Pode Entrar!!";

void _changePeople(int delta){
  setState(() {
    _people += delta;
    if (_people < 0){
      _infoText = "Mundo invertido?";
    } else if(_people<= 10){
      _infoText = "Pode Entrar!!";
    } else {
      _infoText = "Lotado!!";
    }
  });


}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
        debugShowCheckedModeBanner: false,
        home: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset("images/restaurant.jpg",
            fit: BoxFit.cover,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Pessoas: $_people",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: FlatButton(
                        onPressed: (){
                          _changePeople(1);
                        },
                        child: Text("+1", style: TextStyle(
                            fontSize: 40,
                            color: Colors.black
                        ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: FlatButton(
                        onPressed: (){
                          _changePeople(-1);
                        },
                        child: Text("-1", style: TextStyle(
                            fontSize: 40,
                            color: Colors.black
                        ),
                        ),
                      ),
                    ),
                  ],
                ),

                Text(
                  _infoText,
                  style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic, color: Colors.black87),
                )
              ],
            ),
          ],
        )
    );
  }
}



