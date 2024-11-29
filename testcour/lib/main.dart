import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Conteneur(),
    );
  }
}

class Conteneur extends StatelessWidget {
  const Conteneur({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("Demo Container"),
        foregroundColor: const Color.fromARGB(255, 229, 230, 231),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          alignment: Alignment.center,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Text(
            "je suis un text",
            softWrap: true,
            style: TextStyle(
                backgroundColor: Colors.green,
                fontSize: 34,
                color: Colors.yellow),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}



/*
class NouvelPage extends StatelessWidget {
  const NouvelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
*/