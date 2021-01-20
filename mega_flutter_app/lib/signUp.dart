import 'package:flutter/material.dart';
import 'package:mega_flutter_app/home.dart';


class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(30.0),
          children: [
            Form(
              key: _formKey,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        icon: const Icon(Icons.person),
                        hintText: 'Enter your name',
                        labelText: 'Name',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        icon: const Icon(Icons.phone),
                        border: OutlineInputBorder(),

                        hintText: 'Enter a phone number',
                        labelText: 'Phone',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter valid phone number';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        icon: const Icon(Icons.calendar_today),
                        border: OutlineInputBorder(),

                        hintText: 'Enter your date of birth',
                        labelText: 'Dob',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter valid date';
                        }
                        return null;
                      },
                    ),
                  ),
                  new Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new RaisedButton(
                          color: Colors.red,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => home()),
                            );
                          },

                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: const Text('Submit',style: TextStyle(
                              color: Colors.white,
                            ),),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),

    );

  }
}
