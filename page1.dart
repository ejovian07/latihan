import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:latihan/pages/page2.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Halaman Sign Up'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 27, 57, 1.0),
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
          ),
        ),
        
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/Logo.png"))
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.white),
                hintText: 'Nama Lengkap',
                labelText: 'Nama Lengkap',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            Divider(
              indent: 20.0,
              endIndent: 20.0,
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: 'Alamat',
                  labelText: 'Alamat Lengkap',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
            Divider(
              indent: 20.0,
              endIndent: 20.0,
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: 'No. telp',
                  labelText: 'No. telp',
                   enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
            Divider(
              indent: 20.0,
              endIndent: 20.0,
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.white),
                hintText: 'Password',
                labelText: 'Password',
                 enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
            ),
            Container(
              margin: EdgeInsets.only(left: 250),
              child: RaisedButton.icon(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                label: Text('Input'),
                icon: Icon(Icons.keyboard_arrow_down),
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page2(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
