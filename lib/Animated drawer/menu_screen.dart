import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 224, 222),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        children: const [
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: EdgeInsets.only(right: 88.0),
            child: CircleAvatar(
              radius: 70,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  "https://images.indianexpress.com/2018/07/cristiano-ronaldo-fb1.jpg"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Cristiano Ronaldo",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
          ),
          SizedBox(
            height: 80,
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ),
          // ListTile(
          //   leading: Icon(
          //     Icons.settings,
          //     color: Colors.black,
          //   ),
          //   title: Text(
          //     "Setting",
          //     style: TextStyle(
          //         fontWeight: FontWeight.bold,
          //         fontSize: 18,
          //         color: Colors.black),
          //   ),
          // ),
          ListTile(
            leading: Icon(
              Icons.people,
              color: Colors.black,
            ),
            title: Text(
              "Profile",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.share,
              color: Colors.black,
            ),
            title: Text(
              "Share",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.black,
            ),
            title: Text(
              "LogOut",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
