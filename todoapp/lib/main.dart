import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'To Do List';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

final txt1 =
    TextEditingController(); //when you write anything inside the text gonna be save in the txt1.
void textContent() {
  print(txt1.text.toString());
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextField(
          keyboardType: TextInputType.text,
          controller: txt1,
        ),
        ElevatedButton(onPressed: textContent, child: const Text("+"))
      ],
    );
  }
}
