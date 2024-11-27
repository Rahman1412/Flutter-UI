import 'package:flutter/material.dart';

class NavigationDrawerExample extends StatefulWidget {
  @override
  _NavigationDrawerExampleState createState() =>
      _NavigationDrawerExampleState();
}

class _NavigationDrawerExampleState extends State<NavigationDrawerExample> {
  int _currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<Widget> _pages = [
    HomePage(),
    Page1(),
    Page2(),
  ];

  void _onDrawerItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    Navigator.pop(context);
  }

  Future<bool> _onWillPop() async {
    if(_scaffoldKey.currentState!.isDrawerOpen){
      Navigator.pop(context);
      return false;
    }else if (_currentIndex == 0) {
      return true;
    } else {
      setState(() {
        _currentIndex = 0;
      });
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldKey,
          appBar: AppBar(
            title: const Text("Navigation Drawer"),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text(
                    "Menu",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text("Home"),
                  onTap: () => _onDrawerItemTapped(0),
                ),
                ListTile(
                  leading: const Icon(Icons.pages),
                  title: const Text("Page 1"),
                  onTap: () => _onDrawerItemTapped(1),
                ),
                ListTile(
                  leading: const Icon(Icons.pageview),
                  title: const Text("Page 2"),
                  onTap: () => _onDrawerItemTapped(2),
                ),
              ],
            ),
          ),
          body: IndexedStack(
            index: _currentIndex,
            children: _pages,
          ),
        ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Home Page", style: TextStyle(fontSize: 24)),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Page 1", style: TextStyle(fontSize: 24)),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Page 2", style: TextStyle(fontSize: 24)),
    );
  }
}
