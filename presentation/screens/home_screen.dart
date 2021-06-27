import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hloapp_1/domain/entities/user_entity.dart';
import 'package:hloapp_1/presentation/bloc/auth/auth_cubit.dart';
import 'package:hloapp_1/presentation/widgets/theme/style.dart';

import '../../happenings_screen.dart';
import '../../hlocalls_screen.dart';
import '../../hlochat_screen.dart';
import '../../hlonymous_screen.dart';
import '../../rooms_screen.dart';

class HomeScreen extends StatefulWidget {
  final UserEntity userInfo;

  const HomeScreen({Key key, this.userInfo}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isSearch = false;
  int _currentPageIndex = 1;
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


  _buildSearch() {
    return Container(
      height: 45,
      margin: EdgeInsets.only(top: 25),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(.3),
            spreadRadius: 1,
            offset: Offset(0.0, 0.50))
      ]),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search...",
          prefixIcon: InkWell(
            onTap: () {
              //TODO:
              setState(() {
                _isSearch = false;
              });
            },
            child: Icon(Icons.arrow_back),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentPageIndex !=0?AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: _isSearch == false ? primaryColor : Colors.transparent,
        title: _isSearch == false
            ? Text("WhatsApp Clone")
            : Container(
          height: 0.0,
          width: 0.0,
        ),
        flexibleSpace: _isSearch == false
            ? Container(
          height: 0.0,
          width: 0.0,
        )
            : _buildSearch(),
        actions: <Widget>[
          InkWell(
              onTap: () {
                setState(() {
                  _isSearch = true;
                });
              },
              child: Icon(Icons.search)),
          SizedBox(
            width: 5,
          ),
          InkWell(onTap: (){
            BlocProvider.of<AuthCubit>(context).loggedOut();
          },child: Icon(Icons.more_vert))
        ],
      ):null,

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      // Column(
      //   children: <Widget>[
      //     //TODO:CustomTabBar
      //     _isSearch == false
      //         ? _currentPageIndex != 0
      //         : Container(height: 0.0, width: 0.0,)
      //   ],
      // ),
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