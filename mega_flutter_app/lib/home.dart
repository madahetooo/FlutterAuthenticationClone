import 'package:flutter/material.dart';

class home extends StatefulWidget{
  @override
  _homeState createState() => _homeState();
}




class _homeState extends State<home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
        _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('G-mail Demo'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: RaisedButton(
            color: Colors.red,
            onPressed: () {
              // Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Show Alert Dialog', style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),),
            ),

          ),
        ),
      ),
      drawer: Drawer(
        elevation: 20,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(

              accountName: Text(
                "Eslam Medhat",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              accountEmail: Text("eslammedhat@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars1.githubusercontent.com/u/28203059?s=460&u=5461d264a164e53b6fb7513218b678de8b53f413&v=4'),

              ),
              otherAccountsPictures: <Widget>[

                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/media/EcBMZe0X0AUrku4.jpg'),

                ),

              ],
            ),
            ListTile(
              title: Text("Inbox"),
              leading: Icon(Icons.inbox),
            ),
            ListTile(
              title: Text("Sent"),
              leading: Icon(Icons.send),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text("Stared"),
              leading: Icon(Icons.star),
            ),
            ListTile(
              title: Text("Archive"),
              leading: Icon(Icons.archive),
            ),
            ListTile(
              title: Text("Chats"),
              leading: Icon(Icons.chat),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text("Sign Out"),
              leading: Icon(Icons.exit_to_app),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        elevation: 5,
        onTap:_onItemTapped,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            // ignore: deprecated_member_use
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_rounded),
            // ignore: deprecated_member_use
            title: Text('Chat'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            // ignore: deprecated_member_use
            title: Text('People'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            // ignore: deprecated_member_use
            title: Text('Starred'),
          ),


        ],

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
        onPressed: () {},
      ),
    );
  }
}