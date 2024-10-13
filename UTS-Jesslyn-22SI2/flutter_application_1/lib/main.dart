import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'registerpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hello, Welcome Back!",
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: const Color.fromARGB(255, 233, 127, 215),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpg"), 
            fit: BoxFit.cover, 
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            SizedBox(height: 500),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              },
              style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 233, 127, 215),
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
            ),
              child: Text("Log In"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RegisterPage();
                }));
              },
              style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 233, 127, 215),
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
            ),
              child: Text("Register"),
            ),
          ],
        ),
      ),
    );
  }
}