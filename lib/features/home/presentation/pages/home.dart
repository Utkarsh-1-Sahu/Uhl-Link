import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final bool isGuest;
  final Map<String, dynamic>? user;
  const HomePage({super.key, required this.isGuest, this.user});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;

  // List of pages for each navigation item
  final List<Widget> _pages = [
    Center(child: Text("Dashboard Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("Search Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("Learning Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("Notifications Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("Profile Page", style: TextStyle(fontSize: 24))),
  ];
  @override
  Widget build(BuildContext context) {
    // final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkTheme = brightness == Brightness.dark;
    return Scaffold(
      // appBar: AppBar(),


      // resizeToAvoidBottomInset: false,
      // body: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      //   child: Container(),
      //   // child: Text("Hello")
      // ),


      //***************************

      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // The current selected index
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update selected index
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: isDarkTheme? Colors.black: Colors.white, // Set background color to black
        selectedItemColor: Colors.blue, // Set color for the selected item
        unselectedItemColor: isDarkTheme ? Colors.white: Colors.black, // Set color for unselected items
        showSelectedLabels: false, // Hide labels for selected items
        showUnselectedLabels: false, // Hide labels for unselected items
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard), // Dashboard icon
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search), // Search icon
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school), // Learning icon
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications), // Notifications icon
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), // Profile icon
            label: '',
          ),
        ],
      ),
    );

      //*******************************

      // bottomNavigationBar: BottomNavigationBar(items: const []),

  }
}
