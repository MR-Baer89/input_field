import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MainAppState();
  }
}

class _MainAppState extends State<MainApp> {
  final TextEditingController controller = TextEditingController();
  String inputValue = 'noch nichts';

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
                Text(controller.text),
                const SizedBox(
                  height: 32,
                ),
                TextField(
                  controller: controller,
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                ),
                OutlinedButton(
                  onPressed: () {
                    print(controller.text);
                    setState(() {});
                  },
                  child: const Text("Text setzen"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
