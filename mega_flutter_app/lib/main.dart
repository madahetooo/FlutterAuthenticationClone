import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mega_flutter_app/home.dart';
import 'package:mega_flutter_app/signUp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World Flutter Application',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Home page'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application.
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Container(
                width: 200,
                height: 200,
                child: Image.network(
                    'https://logovectorseek.com/wp-content/uploads/2019/08/mega-tv-logo-vector.png'),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/megalogo.png'),
                    ))),
            // Container(child: Image.network('https://gfx4arab.com/wp-content/uploads/2020/07/mega-icon.svg'),
            // ),
            // Container(child: Image.asset(''),
            //   width: 250,
            //   height: 200,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [Colors.red, Colors.red])),
                child: FlatButton(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => home()),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: RichText(
                text: TextSpan(
                    text: 'Don\'t have an account?',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Sign up',
                          style:
                          TextStyle(color: Colors.blueAccent, fontSize: 15),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyForm()),
                              );
                            })
                    ]),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
