import 'package:flutter/material.dart';

import 'package:onlineshop_delivery/screens/displayorders.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
          child: Column(
        children: [for (var i = 0; i < 40; i++) DisplayOrder()],
      )),
    );
  }
}
