import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Store Here'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Login',
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          ),
          const FormLogin(),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Esqueci minha senha',
              style: TextStyle(color: Colors.blue, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}

class FormLogin extends StatelessWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        TextFormField(
          decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Digite seu email',
              prefixIcon: Icon(Icons.alternate_email)),
        ),
        TextFormField(
          obscureText: true,
          obscuringCharacter: '*',
          onChanged: (String? value) {},
          decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Digite sua senha',
              prefixIcon: Icon(Icons.password)),
        ),
      ]),
    );
  }
}
