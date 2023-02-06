import 'package:flutter/material.dart';
import 'package:napos_customer/assets/custom_icons.dart';

class ItemDetailsPage extends StatefulWidget {
  const ItemDetailsPage({super.key, required this.itemName});

  final String itemName;

  @override
  State<StatefulWidget> createState() => _ItemDetailsPageState();
}

class _ItemDetailsPageState extends State<ItemDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.itemName)
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

      body: ListView(
        children: [
          // Description
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
            child: Text("This is a very delicious item."),
          ),
          Divider(),

          // Ingredient warnings
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: Text.rich(
              TextSpan(
                text: "Contains: ",
                children: [
                  TextSpan(text: "Peanuts, "),
                  TextSpan(text: "Beef"),
                ]
              )
            )
          ),
          Divider(),

          // Nutritional facts
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: Image.asset('assets/images/Nutrition-of-Strawberries.jpg')
          ),
          Divider(),

          // Additions
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: ListView(
              shrinkWrap: true,
              children: [
                Row(
                  children: [
                    Text("Ketchup"),
                    Spacer(),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 12),
                      ),
                      child: Text(
                        "+\$1.25",
                        style: TextStyle(color: Colors.red),
                      ),
                      onPressed: () {
                        // CHANGE COLOR AND TOTAL
                      },
                    )
                  ],
                ),

                Row(
                  children: [
                    Text("Mustard"),
                    Spacer(),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 12),
                      ),
                      child: Text(
                        "+\$1.00",
                        style: TextStyle(color: Colors.red),
                      ),
                      onPressed: () {
                        // CHANGE COLOR AND TOTAL
                      },
                    )
                  ],
                ),
              ],
            )
          ),

          // Add to cart and total bar.
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: Row(
              children: [
                // Add to cart button.
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 12),
                  ),
                  child: Text(
                    "Add to cart",
                    style: TextStyle(color: Colors.red),
                  ),
                  onPressed: () {
                    // Navigate back to menu.
                    Navigator.pop(context);
                  },
                ),

                Spacer(),

                // Item total with additions.
                Text(
                  "\$1.12",
                  textAlign: TextAlign.center,
                ),

              ],
            )
          )

        ],
      ),
    );
  }
}