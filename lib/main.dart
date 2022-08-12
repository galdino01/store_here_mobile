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

class FormLogin extends StatefulWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  FormLoginState createState() {
    return FormLoginState();
  }
}

class FormLoginState extends State<FormLogin> {
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                    child: const Text(
                      'Acesse sua conta',
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Digite seu email',
                        prefixIcon: Icon(Icons.alternate_email)),
                    validator: (email) {
                      if (email == null || email.isEmpty) {
                        return 'O campo email não pode estar vazio!';
                      }
                      if (!RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(email)) {
                        return 'Digite o email corretamente! Ex: usuario.mundo@email.com';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: _isObscure,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(),
                      labelText: 'Digite sua senha',
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: IconButton(
                        /// A ternary operator. It is a shorthand way of writing an if-else statement.
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                    ),
                    validator: (password) {
                      if (password == null || password.isEmpty) {
                        return 'O campo senha não pode estar vazio!';
                      }
                      if (!RegExp(
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                          .hasMatch(password)) {
                        return 'Digite uma senha válida!'
                            '\n\nA senha deve ser composta por pelo menos:'
                            '\n- Um caractere especial.'
                            '\n- Um caractere maiúsculo.'
                            '\n- Um caractere minúsculo.'
                            '\n- Um número.'
                            '\n- 8 digitos.';
                      }
                      return null;
                    },
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
                    width: 150,
                    margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: ElevatedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Carregando...')),
                          );
                        }
                      },
                      child:
                          const Text('Login', style: TextStyle(fontSize: 24)),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
