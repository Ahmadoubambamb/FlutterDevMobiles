import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  MyLogin({super.key});

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  var showPassword = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(
                Icons.person_add_alt_1_rounded,
                size: 100,
                color: Colors.blue,
              ),
              const Text(
                "S'enregistrer",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: 'entrer votre mail',
                      labelText: 'Email',
                      suffixIcon: Icon(Icons.visibility),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  obscureText: showPassword,
                  decoration: InputDecoration(
                      hintText: 'entre votre mot de pass',
                      labelText: 'Mot de pass',
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              // celui-ci c'est applique le changement
                              showPassword = !showPassword;
                            });
                          },
                          icon: showPassword
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off))),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "S'enregister",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, backgroundColor: Colors.blue),
                ),
              )
            ],
          )),
    );
  }
}
