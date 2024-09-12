import 'package:flutter/material.dart';
import 'package:app_ab2/widgets/navbar.dart';
import 'package:app_ab2/page/notebook.dart';
import 'package:app_ab2/page/page.dart';

class CeluPage extends StatefulWidget {
  const CeluPage({super.key});

  @override
  State<CeluPage> createState() => _CeluPageState();
}

class _CeluPageState extends State<CeluPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.phone),
            Text(
              'Celular',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.all(9),
      ),
      drawer: Drawer(
        child: ListView(children: [
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home),
            trailing: Icon(Icons
                .arrow_forward_ios), // Opcional: agregar un icono de flecha
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mypage()),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text('SCelular'),
            leading: Icon(Icons.shopping_bag),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Notebook()),
              );
            }, // Opcional: agregar un icono de flecha
          ),
        ]),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
