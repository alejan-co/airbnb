import 'package:basic_flutter/screens/calender_screen.dart';
import 'package:basic_flutter/screens/emergency_screen.dart';
import 'package:basic_flutter/screens/explore_screen.dart';
import 'package:basic_flutter/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            SingleChildScrollView(child: ExploreScreen()),
            SingleChildScrollView(child: CalenderScreen()),
            SingleChildScrollView(child: ProfileScreen()),
            SingleChildScrollView(child: EmergencyScreen()),
          ],
        ),

        bottomNavigationBar: TabBar(
          controller: _tabController,
          labelColor: Colors.redAccent,
          labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
          unselectedLabelColor: Colors.grey,
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
          indicatorColor: Colors.transparent,
          tabs: const [
            Tab(icon: Icon(Icons.explore, size: 25), text: "Explorar"),
            Tab(
              icon: Icon(Icons.calendar_month_outlined, size: 25),
              text: "Agenda",
            ),
            Tab(icon: Icon(Icons.person_outline, size: 25), text: "Perfil"),
            Tab(
              icon: Icon(Icons.emergency_outlined, size: 25),
              text: "Contacto Emergencia",
            ),
            Tab(icon: Icon(Icons.search, size: 25), text: "Explorar"),
          ],
        ),
      ),
    );
  }
}
