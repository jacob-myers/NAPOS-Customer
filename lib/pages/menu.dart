import 'package:flutter/material.dart';
import '../widgets/sidebar.dart';

// Using a drawer: https://api.flutter.dev/flutter/material/Scaffold/drawer.html
// IconButton class: https://api.flutter.dev/flutter/material/IconButton-class.html
// Icons: https://api.flutter.dev/flutter/material/Icons-class.html

class MyMenu extends StatefulWidget {
  const MyMenu({super.key, required this.title});

  final String title;

  @override
  State<MyMenu> createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: _openDrawer
        ),
        title: Center(
            child: Text(widget.title)
        ),
        actions: [
          // Amount of money in cart (not implemented).
          Container(
            alignment: Alignment.center,
            child: Text(
              "\$1.12",
              textAlign: TextAlign.center,
            ),
          ),
          //Button to navigate to cart.
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // NAVIGATE TO CART
            },
          )
        ],
      ),
      drawer: SideBar(),
      body: ListView(
        children: List.generate(20, (index) {
          return InkWell(
            child: Card(
              child: Padding(
                padding:EdgeInsets.all(20.0),
                child: Text("Menu Item ${index + 1}")
              )
            ),
            onTap: () {
              // NAVIGATE TO DETAILS PAGE ABOUT THE ITEM
            },
          );
        }),
      ),
    );
  }
}