import 'package:flutter/material.dart';
import 'package:napos_customer/pages/payment_options.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<StatefulWidget> createState() => _CartPage();
}

class _CartPage extends State<CartPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cart")
      ),

      body: ListView(
        children: List.generate(20, (index) {
          return Row(
            children: [
              Expanded(
                child: Card(
                    child: Padding(
                      padding:EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          // Name of item takes up all space not taken by price.
                          Expanded(
                            child: Text("Item in cart ${index + 1}")
                          ),
                          Text("\$1.00",)
                        ],
                      )
                    )
                )
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    // DELETE ITEM FROM CART
                  },
                ),
              )
            ],
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
                  // Navigate to PAYMENT
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentOptionsPage())
                  );
                },
              ),

              Spacer(),

              // Cart total.
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, IconTheme.of(context).size! + 30.0, 0),
                child: Text(
                  "\$20.00",
                  textAlign: TextAlign.center,
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}


