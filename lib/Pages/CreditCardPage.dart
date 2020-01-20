import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CreditCardPage extends StatefulWidget {
  @override
  _CreditCardPageState createState() => _CreditCardPageState();
}

class _CreditCardPageState extends State<CreditCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            CreditCardWidget(
              cardNumber: '4555888',
              expiryDate: '24/20',
              cardHolderName: 'Ryan Lucas',
              cvvCode: '288',
              showBackView: false, //true when you want to show cvv(back) view
            ),
          ],
        ),
      ),
    );
  }
}
