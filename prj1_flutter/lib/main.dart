import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Widget titleSection = Container(
    padding: const EdgeInsets.all(8),
    child: Row(
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                "Pizza facile",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const Text(
              "Par Bamba food",
              style: TextStyle(
                  color: Color.fromARGB(255, 107, 163, 10), fontSize: 15),
            )
          ],
        )),
        const Icon(
          Icons.favorite,
          color: Color.fromARGB(255, 250, 16, 16),
        ),
        const Text('55'),
      ],
    ),
  );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 191, 243, 106)),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Mes recette"),
        ),
        body: Column(
          children: [titleSection],
        ),
      ),
    );
  }
}
