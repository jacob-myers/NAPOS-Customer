import 'package:flutter/material.dart';
import 'package:napos_customer/pages/confirm_order.dart';
import 'package:napos_customer/styles/styles.dart';

class PaymentOptionsPage extends StatefulWidget {
  const PaymentOptionsPage({super.key});

  @override
  State<StatefulWidget> createState() => _PaymentOptionsPage();
}

class _PaymentOptionsPage extends State<PaymentOptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Payment Options"),
      ),

      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: Center(
              child: Text(
                "Please select a payment method.",
                style: TextStyle(color: Colors.black45),
              ),
            ),
          ),
          Divider(height: 1,),

          // Method 1
          InkWell(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              child: Center(
                child: Text("Method 1", style: CustomTextStyle.largeOptions,),
              ),
            ),
            onTap: () {
              // Navigate to confirm order page.
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConfirmOrderPage())
              );
            },
          ),
          Divider(height: 1,),

          // Method 2
          InkWell(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              child: Center(
                child: Text("Method 2", style: CustomTextStyle.largeOptions,),
              ),
            ),
            onTap: () {
              // Navigate to confirm order page.
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConfirmOrderPage())
              );
            },
          ),
          Divider(height: 1,),

          // Method 3
          InkWell(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              child: Center(
                child: Text("Method 3", style: CustomTextStyle.largeOptions,),
              ),
            ),
            onTap: () {
              // Navigate to confirm order page.
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConfirmOrderPage())
              );
            },
          ),

        ],
      ),

    );
  }
}