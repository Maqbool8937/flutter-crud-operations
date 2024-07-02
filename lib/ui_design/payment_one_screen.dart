import 'package:flutter/material.dart';
class PaymentOneScreen extends StatefulWidget {
  const PaymentOneScreen({super.key});

  @override
  State<PaymentOneScreen> createState() => _PaymentOneScreenState();
}

class _PaymentOneScreenState extends State<PaymentOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment One Screen'),
      ),
    );
  }
}
