import 'package:dashbord_trail/Sections/activity_section.dart';
import 'package:dashbord_trail/Sections/balance_section.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Homepage Layout',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:gradient Color.fromARGB(255, 94, 91, 236),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue, Colors.green],
          ),
        ),
        child: Column(
          children: [
            // User Profile Section
            UserProfileSection(),
            // Search Textbox
            SearchTextbox(),
            // User Balance
            UserBalanceSection(),
            // Activity Section
            Expanded(child: ActivitySection()),
          ],
        ),
      ),
    );
  }
}

// User Profile Section Widget
class UserProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      // color: const Color.fromARGB(255, 94, 91, 236),
      child: const Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(
              'assets/images/photo_3.jpg'), // Replace with your profile picture
          ),
          SizedBox(width: 16),
          Text(
            'Andrea Miller',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 70),
          Icon(Icons.mail, color: Colors.white,),
          SizedBox(width: 20),
          Icon(Icons.notification_add, color: Colors.white,)
        ],
      ),
    );
  }
}

// Search Textbox Widget
class SearchTextbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
      child: const TextField(
        decoration: InputDecoration(
          fillColor: Colors.white, filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          prefixIcon: Icon(Icons.search),
          hintText: 'Search...',
        ),
      ),
    );
  }
}


