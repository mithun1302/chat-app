import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hloapp_1/hlocalls_screen.dart';
import 'package:hloapp_1/hlochat_screen.dart';
import 'package:hloapp_1/rooms_screen.dart';

import 'happenings_screen.dart';
import 'hlonymous_screen.dart';

class Nav extends StatefulWidget{
  @override
  _NavState createState()=>_NavState();
}

class _NavState extends State<Nav>{
  int _selectedIndex=0;
  List<Widget> _widgetOptions = <Widget>[
    HloChat(),
    Rooms(),
    Happenings(),
    Hlonymous(),
    HloCalls(),
  ];

  void _onItemTap(int index){
    setState((){
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Hlochat'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home)
            ,title: Text('Hlochat'),
            backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home)
            ,title: Text('Rooms'),
              backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home)
            ,title: Text('Happenings'),
              backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home)
            ,title: Text('Hlonymous'),
              backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home)
            ,title: Text('Hlocalls'),
              backgroundColor: Colors.red
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,

      ),
    );
  }
}