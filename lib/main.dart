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
      body: const FormLogin(),
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
        Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 50),
          child: const Text(
            'Acesse sua conta',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ),
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
        TextButton(
          onPressed: () {},
          child: const Text(
            'Esqueci minha senha',
            style: TextStyle(color: Colors.blue, fontSize: 12),
          ),
        ),
        Container(
          height: 50,
          width: 250,
          margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'Login',
              style: TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.blue,
                  fontSize: 25),
            ),
          ),
        )
      ]),
    );
  }
}
