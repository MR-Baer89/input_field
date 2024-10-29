import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

String userName = 'Mr. Bär';
String userPassword = 'Honey89';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MainAppState();
  }
}

class _MainAppState extends State<MainApp> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 32, right: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(userController.text),
                const SizedBox(
                  height: 32,
                ),
                TextField(
                  controller: userController,
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 32,
                ),
                TextField(
                  controller: passwordController,
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                ),
                OutlinedButton(
                  onPressed: () {
                    print(userController.text);
                    if (userController.text == userName &&
                        passwordController.text == userPassword) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Login successfull')));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Go awy')));
                    }
                    setState(() {});
                  },
                  child: const Text('Login'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
