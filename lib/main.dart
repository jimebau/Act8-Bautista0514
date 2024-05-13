import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff29302f),
          title: Text(
            "Nissan Muñoz 0514",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      print("Elevated Buton Pressed");
                    },
                    child: Text("Elevated Button"),
                    style: ElevatedButton.styleFrom(
                        onSurface: Color(0xff363b3b),
                        onPrimary: Color(0xffffffff),
                        primary: Colors.black,
                        textStyle: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: OutlinedButton(
                    onPressed: () {
                      print("Outlined Button Pressed");
                    },
                    child: Text("Outlined Button"),
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff484a4b)),
                      overlayColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Color(0xff8f9d9f);
                        }
                        return Color(0xff5f6464);
                      }),
                      textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic);
                        }
                        return TextStyle();
                      }),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      print("Text Button Pressed");
                    },
                    child: Text("Text Button"),
                    style: TextButton.styleFrom(
                        primary: Colors.black,
                        textStyle: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      print("Elevated Button Pressed");
                    },
                    icon: Icon(Icons.car_crash),
                    label: Text("Elevated Button Icon"),
                    style: ElevatedButton.styleFrom(
                        onSurface: Color(0xffffffff),
                        onPrimary: Color(0xffffffff),
                        primary: Colors.black,
                        textStyle: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: OutlinedButton.icon(
                    onPressed: () {
                      print("Outlined Button Pressed");
                    },
                    icon: Icon(Icons.car_crash),
                    label: Text("Outlined Button Icon"),
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff363738)),
                      overlayColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Color(0xff1e1f1f);
                        }
                        return Color(0xff3c3f3f);
                      }),
                      textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic);
                        }
                        return TextStyle();
                      }),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton.icon(
                    onPressed: () {
                      print("Text Button Pressed Icon");
                    },
                    icon: Icon(Icons.car_crash),
                    label: Text("Text button Icon"),
                    style: TextButton.styleFrom(
                        primary: Colors.black,
                        textStyle: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold)),
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
