import 'package:connectfoodfrontend/pages/consultant.dart';
import 'package:connectfoodfrontend/pages/home.dart';
import 'package:connectfoodfrontend/pages/job.dart';
import 'package:connectfoodfrontend/pages/post.dart';
import 'package:flutter/material.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Pages> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const HomePage(),
    const ConsultantPage(),
    Container(), // Empty container for the PostPage
    const JobPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xFF26AE57),
        unselectedItemColor: Colors.black,
        showSelectedLabels: true, // Always show selected labels
        showUnselectedLabels: true,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_sharp, size: 30),
            label: 'Consultants',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_rounded,
              size: 30,
            ),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/briefcase-fill.png',
              width: 24,
            ),
            label: 'Get a Job',
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const PostPage()),
      );
    } else {
      setState(() {
        _currentIndex = index;
      });
    }
  }
}
