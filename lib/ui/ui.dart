import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const Color darkBlue = Color.fromARGB(255, 12, 47, 85);
  static const TextStyle judulStyle = TextStyle(fontWeight: FontWeight.bold);
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  //untuk ubah judul
  static const List<Widget> _judulOption = <Widget>[
    Text(
      'Daftar Film',
      style: judulStyle,
    ),
    Text(
      'Akun Saya',
      style: judulStyle,
    ),
  ];

  //untuk kontennya atau body
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _judulOption.elementAt(_selectedIndex),
        backgroundColor: darkBlue,
        shadowColor: Colors.black,
        elevation: 20,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_rounded),
            label: 'Film',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Akun Saya',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.redAccent,
        onTap: _onItemTapped,
        backgroundColor: darkBlue,
        showUnselectedLabels: false,
      ),
    );
  }
}
