import 'package:flutter/material.dart';
import 'package:app_ab2/widgets/navbar.dart';

class Notebook extends StatefulWidget {
  const Notebook({super.key});

  @override
  State<Notebook> createState() => _NotebookState();
}

class _NotebookState extends State<Notebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.computer),
        title: Text('Notebooks'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        backgroundColor: Colors.cyan,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'Notebooks',
                    style: TextStyle(fontSize: 25),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.computer,
                      color: Colors.blue,
                      size: 40,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'gkjsadasdasdasdasdasdasdsdasdasaljlkj',
                      style: TextStyle(fontSize: 25),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
