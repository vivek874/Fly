import 'package:flyeasy/screens/home_screen.dart';
import 'package:flyeasy/screens/profile.dart';
import 'package:flyeasy/screens/ticket_view.dart';
import 'package:flutter/material.dart';
class BottomBar   extends StatefulWidget {
  const BottomBar  ({super.key});
  @override
  State<BottomBar> createState() => BottomBarState();
}



class BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget>_widgetOptions =<Widget>[    //list of widgets where _widgetOption is variable name
    HomeScreen(),                                      // const creates compile-time constants instead of at run time
    TicketView(),
    Profile(),                           //this is like an array
  ];
  void _onItemTapped(int index){                   // this is a method
    setState(() {                                 // also a method
      _selectedIndex=index;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,                   // onTap goes to method _onItemTapped for the clicking to work
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home),
              label: "Home"),
        
          BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket),
              activeIcon: Icon(Icons.airplane_ticket),
              label: "Ticket"),
          BottomNavigationBarItem(icon: Icon(Icons.person),
              activeIcon: Icon(Icons.person),
               label: "Profile"),
        ],

      ) ,

    );
  }
}