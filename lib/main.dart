import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController numberTF = TextEditingController();
  String val = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My Calculator"),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(val),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: numberTF,
                  decoration: InputDecoration(
                      hintText: "Enter a number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 220,
                width: 290,
                padding: const EdgeInsets.all(10),
                color: Colors.deepPurple,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () => onPressed("1"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black),
                          child: const Text("1"),
                        ),
                        ElevatedButton(
                            onPressed: () => onPressed("2"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black),
                            child: const Text("2")),
                        ElevatedButton(
                            onPressed: () => onPressed("3"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black),
                            child: const Text("3"))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            onPressed: () => onPressed("4"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black),
                            child: const Text("4")),
                        ElevatedButton(
                            onPressed: () => onPressed("5"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black),
                            child: const Text("5")),
                        ElevatedButton(
                            onPressed: () => onPressed("6"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black),
                            child: const Text("6"))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            onPressed: () => onPressed("7"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black),
                            child: const Text("7")),
                        ElevatedButton(
                            onPressed: () => onPressed("8"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black),
                            child: const Text("8")),
                        ElevatedButton(
                            onPressed: () => onPressed("9"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black),
                            child: const Text("9"))
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: () => onPressed("0"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black),
                            child: const Text("0"))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void onPressed(String val) {
    val = numberTF.text + val;
    numberTF.text = val;
    setState(() {});
  }
}
