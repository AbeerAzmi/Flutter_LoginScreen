import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keto Diet'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: const <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "Abeer Azmi",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              accountEmail: Text("Abeeerazmi@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://media-exp1.licdn.com/dms/image/C4D03AQFBo4BsWJ3krg/profile-displayphoto-shrink_200_200/0/1640157010458?e=1654128000&v=beta&t=WM7HBeK8I1c6eoqNyPEtzQPRFQCOmI3UuTMf1CnXUQ8'),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.pngitem.com/pimgs/m/677-6771505_purplekitchen-clipart-image-freeuse-purple-kitchen-cooking-tools.png'),
                ),
              ],
            ),
            ListTile(
              title: Text("Send"),
              leading: Icon(Icons.send),
            ),
            ListTile(
              title: Text("Inbox"),
              leading: Icon(Icons.inbox),
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
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text("Chat"),
              leading: Icon(Icons.chat),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text("Log out"),
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.black,
        onPressed: () {},
      ),
    );
  }
}
