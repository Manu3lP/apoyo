import 'package:flutter/material.dart';
import 'package:app_ab2/widgets/navbar.dart';

class Mypage extends StatefulWidget {
  const Mypage({super.key});

  @override
  State<Mypage> createState() => _MypageState();
}

class _MypageState extends State<Mypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.computer),
        title: Text('home'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView(children: const [
          ListTile(
              title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/perro.png')),
              Text(
                'Home',
                style: TextStyle(fontSize: 25),
              ),
            ],
          )),
          SizedBox(
            height: 109,
            width: 8,
          ),
          Column(
            children: [
              ListTile(
                  title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home),
                  Text(
                    'Home',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              )),
            ],
          ),
        ]),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
