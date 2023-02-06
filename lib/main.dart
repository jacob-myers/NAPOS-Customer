import 'package:flutter/material.dart';
import 'pages/menu.dart';

void main() {
  runApp(const NaposCustomer());
}

class NaposCustomer extends StatelessWidget {
  const NaposCustomer({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Napos Customer',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyMenu(title: 'Menu'), // Restaurant name will be here
    );
  }
}


