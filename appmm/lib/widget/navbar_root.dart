
import 'package:appmm/ui/farm_screen.dart';
import 'package:appmm/ui/home_screen.dart';
import 'package:appmm/ui/settings_screen.dart';
import 'package:flutter/material.dart';

class NavBarRoots extends StatefulWidget{
  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}


class _NavBarRootsState extends State<NavBarRoots>{
  int _selectedIndex = 0;
  final _screens = [
    //Home Screeen
    HomeScreen(),
    //แปลง
    FarmScreen(),
    //รายงาน
    Container(),
    //ตั้งค่า
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF45DA40),
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle(
            fontFamily: 'Prompt-Bold',
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          unselectedLabelStyle:TextStyle(
            fontFamily: 'Prompt-Light',
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
          currentIndex: _selectedIndex,
          onTap: (index){
            setState((){
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "หน้าหลัก",),
            BottomNavigationBarItem(icon: Icon(Icons.grass_outlined),label: "แปลง",),
            BottomNavigationBarItem(icon: Icon(Icons.assessment),label: "รายงาน",),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "ตั้งค่า",),
          ],
        ),
      ),
    );
  }
}
