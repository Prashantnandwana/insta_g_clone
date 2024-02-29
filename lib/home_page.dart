import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int _selectedIndex=2;
   void _navigateBottomNavBar(int index){
    setState(() {
      _selectedIndex=index;
    });
   }
   final List<Widget>_children=[
   UserHome(),
    Center(child: Text("serch")) ,
    Center(child: Text("reels")) ,
    Center(child: Text("shop")) ,
    Center(child: Text("account")) ,
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:_children[_selectedIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _navigateBottomNavBar,
        currentIndex: _selectedIndex,
       type: BottomNavigationBarType.fixed,
        items: 
      [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
        BottomNavigationBarItem(icon: Icon(Icons.video_call),label: "reels"), 
        BottomNavigationBarItem(icon: Icon(Icons.shop),label: "shop"),
        BottomNavigationBarItem(icon: Icon(Icons.account_balance),label: "account"),
      ]
      )
    );
  }
}