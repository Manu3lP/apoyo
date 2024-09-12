import 'package:flutter/material.dart';
import 'package:app_ab2/page/celular.dart';
import 'package:app_ab2/page/notebook.dart';
import 'package:app_ab2/page/page.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Aquí puedes agregar la lógica para navegar a las diferentes páginas
    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Mypage()),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Notebook()),
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CeluPage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home_work),
          label: 'Hoteles',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store),
          label: 'Servicios',
        ),
      ],
    );
  }
}
