import 'package:buddy_budge/src/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';

class RegisterGroupScreen extends StatelessWidget {
  static const String screenName = "/registerScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFFFFC444),
              Color(0xFFFF9085),
              Color(0xFFfa6eba),
            ],
          ),
        ),
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Crie seu grupo",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(height: 24.0),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Seu nome",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Marquinhos Zunckeberg",
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Nome do grupo",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Barzinhos dos brothers",
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Flexible(
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Color(0xFFFFC444),
                    height: 54,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    onPressed: () {
                      print("adicionando fatura");
                    },
                    child: Text("criar grupo"),
                  ),
                ),
                SizedBox(height: 24.0),
                Text(
                  "ou\nentre em um grupo",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(height: 24.0),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Seu nome",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Marquinhos Zunckeberg",
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Código do grupo",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "XYZ123",
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Flexible(
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Color(0xFFFFC444),
                    height: 54,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, HomeScreen.screenName);
                    },
                    child: Text("entrar no grupo"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
