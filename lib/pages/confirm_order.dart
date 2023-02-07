import 'package:flutter/material.dart';
import 'package:napos_customer/styles/styles.dart';

class ConfirmOrderPage extends StatefulWidget {
  const ConfirmOrderPage({super.key});

  @override
  State<StatefulWidget> createState() => _ConfirmOrderPage();
}

class _ConfirmOrderPage extends State<ConfirmOrderPage> {
  final _formKey = GlobalKey<FormState>();

  Widget buildConfirmationPopup(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        width: 100,
        height: 100,
        child: Column(
          children: [
            Text("Your order has been placed!", style: CustomTextStyle.largeOptions, textAlign: TextAlign.center,),
            Spacer(),
            Icon(Icons.check)
          ],
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Confirm Payment"),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
        child: ListView(
          children: [
            // Payment method
            Text("Method"),
            Text("Visa ending in 9431"),
            Divider(),

            // Order items and price
            Text("Order"),
            Row(
              children: [
                Text("Item 1"),
                Spacer(),
                Text("\$1.00")
              ],
            ),
            Row(
              children: [
                Text("Item 2"),
                Spacer(),
                Text("\$1.00")
              ],
            ),
            Row(
              children: [
                Text("Item 3"),
                Spacer(),
                Text("\$1.00")
              ],
            ),
            // Subtotal
            Row(
              children: [
                Text("Subtotal"),
                Spacer(),
                Text("\$3.00")
              ],
            ),
            Divider(),

            // Tax and fees
            Row(
              children: [
                Text("Tax and Fees"),
                Spacer(),
                Text("\$2.00")
              ],
            ),
            Divider(),
            // Total

            Row(
              children: [
                Text("Total"),
                Spacer(),
                Text("\$5.00")
              ],
            ),

          ],
        ),
      ),


      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 12),
                  ),
                  child: Text(
                    "Checkout",
                    style: TextStyle(color: Colors.red),
                  ),
                  onPressed: () {
                    // Route to home and then show popup. Called from function above.
                    Navigator.of(context).popUntil((route) => route.isFirst);
                    showDialog(context: context, builder: buildConfirmationPopup);
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}