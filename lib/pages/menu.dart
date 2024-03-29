import 'package:flutter/material.dart';
import 'package:napos_customer/pages/cart.dart';
import 'package:napos_customer/pages/item_details.dart';
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
              "\$20.00",
              textAlign: TextAlign.center,
            ),
          ),
          //Button to navigate to cart.
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Navigate to cart
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartPage())
              );
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
                    child: Row(
                      children: [
                        // Name of item takes up all space not taken by price.
                        Expanded(
                            child: Text("Menu Item ${index + 1}")
                        ),
                        Text("\$1.00",)
                      ],
                    )
                )
            ),
            onTap: () {
              // Navigate to the item details page about selected item (passes as string rn)
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ItemDetailsPage(itemName: "Menu Item ${index + 1}"))
              );
            },
          );
        }),
      ),

      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          child: Row(
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 12),
                ),
                child: Text(
                  "Checkout",
                  style: TextStyle(color: Colors.red),
                ),
                onPressed: () {
                  // Navigate to cart
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartPage())
                  );
                },
              ),

              Spacer(),

              // Cart total.
              Text(
                "\$20.00",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}