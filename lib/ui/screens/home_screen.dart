import 'package:busconnect/ui/screens/features/attendance_screen.dart';
import 'package:busconnect/ui/screens/features/notification_screen.dart';
import 'package:busconnect/ui/screens/features/profile_screen.dart';
import 'package:busconnect/ui/screens/features/schedule_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  final String title = 'Bus Connect';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;

  static List<Widget> pages = <Widget>[
    ScheduleScreen(),
    AttendanceScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.directions_bus),
            label: 'Track Bus',
          ),
          NavigationDestination(
            icon: Icon(Icons.calendar_today),
            label: 'Attendance',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications),
            label: 'Updates',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
