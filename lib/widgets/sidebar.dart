import 'package:flutter/material.dart';

// App bar documentation: https://api.flutter.dev/flutter/material/AppBar-class.html
// Create a sidebar: https://oflutter.com/create-a-sidebar-menu-in-flutter/

class SideBar extends StatefulWidget {
  const SideBar({super.key});


  @override
  State<SideBar> createState() => _SideBar();
}

class _SideBar extends State<SideBar> {
  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        // Categories appBar
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: _closeDrawer,
          ),
          title: const Text("Categories"),
        ),
        // Categories Body
        body: ListView(
          children: List.generate(20, (index) {
            return InkWell(
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Category")
                )
              ),
              onTap: () {
                // SHOW ONLY ITEMS FROM CATEGORY
              },
            );
          })
        ),
      )
    );
  }
}
